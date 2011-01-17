
require 'rubygems'
require 'test/unit'

if ENV['USE_BINARY_PROJ4']
  require 'proj4_ruby'
else
  require File.join(File.dirname(__FILE__), %w{ .. lib ffi-proj4 })
end

puts "Ruby version #{RUBY_VERSION} - #{RbConfig::CONFIG['RUBY_INSTALL_NAME']}"
puts "PROJ version #{Proj4.version}"
if defined?(Geos::FFIGeos)
  puts "Using #{Geos::FFIProj4.proj4_library_path.join(', ')}"
end

module TestHelper
  TOLERANCE = 0.00000001

  def self.included(base)
    base.class_eval do
    end
  end

  def setup
  end
end
