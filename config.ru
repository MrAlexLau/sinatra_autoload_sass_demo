require 'rubygems'
require 'sinatra'
require 'rack-livereload' if settings.development?
require File.expand_path('../application.rb', __FILE__)

run StyleInjectionApp.new

if settings.development?
  use Rack::LiveReload
end
