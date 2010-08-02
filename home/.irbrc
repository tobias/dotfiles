require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize

#require 'hirb'
#puts 'hirb installed. enable with: Hirb.enable'
require 'ap'
puts 'awesome_print loaded. Use with: ap <value>'

require 'logger'
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
end

begin
  require "ap"
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
rescue LoadError => e
  puts "ap gem not found.  Try typing 'gem install awesome_print' to get super-fancy output."
end
