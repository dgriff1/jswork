require 'rubygems'
require 'sinatra'
require 'erb'


set :public, File.dirname(__FILE__) + '/static'

get '/' do
	erb :index
end
