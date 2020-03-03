# encoding: utf-8
class App < Sinatra::Application

	get '/dev' do
	  {site: 'dev', content: 'only in dev'}
	end
  
end