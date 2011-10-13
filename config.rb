
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

Dir[File.expand_path("../lib/**/*.rb", __FILE__)].each {|f| require f}