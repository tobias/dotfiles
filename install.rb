#!/usr/bin/env ruby

# from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /install/ || file =~ /README/
  target = File.join(home, ".#{file}")
  if ARGV.first == 'clean'
    `rm #{target}`
  else
    `ln -ns #{File.expand_path file} #{target}`
  end

end

# git push on commit
`echo 'git push' > .git/hooks/post-commit`
`chmod 755 .git/hooks/post-commit`
