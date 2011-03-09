#-*-ruby-*-
def force_require(lib, gem = nil)

  gem ||= lib
  require lib
rescue LoadError => e
  return false if defined?(Bundler)
  puts "Installing #{gem} gem..."
  system "gem install #{gem}"
  Gem.clear_paths
  begin
    require lib
  rescue LoadError => e
    puts "failed to load #{lib}. Bundler?"
    false
  end
end

def add_lib
  $:.unshift('./lib/')
end

require 'rubygems'
#if force_require 'wirble'
#  Wirble.init
#  Wirble.colorize
#end

#if force_require 'ap', 'awesome_print'
#  puts 'awesome_print loaded. Use with: ap <value>'

#  IRB::Irb.class_eval do
#    def output_value
#      ap @context.last_value
#     end
#   end
# end

require 'logger'
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end

# if force_require 'hashery/opencascade', 'hashery'
#   force_require 'yaml'
#   EC2 = OpenCascade[YAML.load_file(ENV['HOME'] + '/.ec2/tcrawley-rht-creds.yml')]
# end

IRB.conf[:USE_READLINE] = true


