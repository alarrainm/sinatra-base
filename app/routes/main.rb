# encoding: utf-8
class App < Sinatra::Application

	get '/' do
	  {site: 'home', content: 'Put this in your pipe & smoke it!', model: Main::main_method('Using a model')}
	end
  
end