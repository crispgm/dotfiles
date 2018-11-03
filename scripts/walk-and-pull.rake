# coding: utf-8
task default: %w[update]

desc "walk all dirs and git pull"
task :update do
  d = Dir.new("./")
  d.each do |sub|
    next if sub == "." || sub == ".." || File.file?(sub)
    Dir.chdir(sub) do
      if !Dir.exist? ".git"
        puts "======================="
        puts "Ignore: #{sub}"
        next
      end
    	puts "======================="
      puts "Update: #{sub}"
      sh "git pull"
    end
  end
end
