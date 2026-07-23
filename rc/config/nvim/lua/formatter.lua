local M = {}
local a = vim.api
local f = vim.fn

local function notify_failure(name, result)
    local detail = result
    if type(result) == 'table' then
        detail = result.stderr ~= '' and result.stderr or result.stdout
        if detail == '' then
            detail = 'Formatter exited with code ' .. result.code
        end
    end
    vim.notify(
        string.format('%s failed:\n%s', name, vim.trim(tostring(detail))),
        vim.log.levels.ERROR
    )
end

local function run(command, opts)
    local ok, process = pcall(vim.system, command, opts)
    if not ok then
        return nil, process
    end

    local ok_wait, result = pcall(process.wait, process)
    if not ok_wait then
        return nil, result
    end
    if result.code ~= 0 then
        return nil, result
    end
    return result
end

local function buffer_text(buf)
    local lines = a.nvim_buf_get_lines(buf, 0, -1, false)
    return lines, table.concat(lines, '\n') .. '\n'
end

local function replace_buffer(buf, text)
    local lines = vim.split(text, '\n', { plain = true })
    if lines[#lines] == '' then
        table.remove(lines)
    end
    if #lines == 0 then
        lines = { '' }
    end
    if not vim.deep_equal(a.nvim_buf_get_lines(buf, 0, -1, false), lines) then
        a.nvim_buf_set_lines(buf, 0, -1, false, lines)
    end
end

local function format_stdin(opts, name, command)
    local _, input = buffer_text(opts.buf)
    local result, err = run(command, { stdin = input, text = true })
    if not result then
        notify_failure(name, err)
        return
    end
    replace_buffer(opts.buf, result.stdout)
end

function M.bean_format(opts)
    local lines = a.nvim_buf_get_lines(opts.buf, 0, -1, false)
    local temp_path = f.tempname() .. '.bean'
    local ok, write_status = pcall(f.writefile, lines, temp_path)
    if not ok or write_status ~= 0 then
        local write_err = ok and 'Could not create temporary formatting file' or write_status
        notify_failure('bean-format', write_err)
        return
    end

    local result, err = run({ 'bean-format', temp_path, '-o', temp_path }, { text = true })
    if result then
        local ok_read, formatted = pcall(f.readfile, temp_path)
        if ok_read then
            a.nvim_buf_set_lines(opts.buf, 0, -1, false, formatted)
        else
            notify_failure('bean-format', formatted)
        end
    else
        notify_failure('bean-format', err)
    end
    f.delete(temp_path)
end

function M.lua_format(opts)
    local config = vim.fs.find('.stylua.toml', {
        path = vim.fs.dirname(opts.file),
        upward = true,
    })[1]
    local command = { 'stylua', '-' }
    if config then
        table.insert(command, '--config-path')
        table.insert(command, config)
    end
    format_stdin(opts, 'stylua', command)
end

function M.shell_format(opts)
    format_stdin(opts, 'shfmt', { 'shfmt', '-filename', opts.file })
end

function M.bean_check(opts)
    local result, err = run({ 'bean-check', opts.file }, { text = true })
    if not result then
        notify_failure('bean-check', err)
    end
end

return M
