# encoding: utf-8
class App < Sinatra::Application

	get '/health-check' do
	  {site: 'health-check', status: 'ok'}
	end
  
end