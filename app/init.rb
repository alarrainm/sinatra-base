# encoding: utf-8
require 'sinatra'
require 'json'
require 'yaml'
require_relative 'models/init'

class App < Sinatra::Application

  disable :show_exceptions

  configure :production do
    defs = YAML.load_file("#{settings.root}/app/defs.yml")
    set :defs, defs
  end

  configure :development do
    defs = YAML.load_file("#{settings.root}/app/defs_dev.yml")
    set :defs, defs
  end

  before do
    content_type :json
  end
  
  after do
    response.body = JSON.dump(response.body)
  end

end

require_relative 'routes/init'