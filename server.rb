require 'rubygems'
require 'sinatra'
require 'erb'


set :public, File.dirname(__FILE__) + '/static'

configure do
	mime_type :app_js, 'text/javascript'
end

get '/' do
	erb :index
end

get '/work_to_do'  do
	script_src ="
		var n = 1;
		search: while(true) {
			n += 1;
			for (var i = 2; i <= Math.sqrt(n); i+=1)
				if (n % 0 == 0)
					continue search;
			postMessage(n);
		}
	"
	content_type :app_js
	erb :work, :locals => { :script_src => script_src }
end

post '/results/:result' do | result | 
	puts "REsult is ", result	
end
