-- simple setups
require('colorizer').setup()
require('tabline').setup{}
require('pears').setup(function(conf)
    conf.preset 'tag_matching'
    conf.expand_on_enter(false)
end)
require('go').setup{ linter = 'golint' }
