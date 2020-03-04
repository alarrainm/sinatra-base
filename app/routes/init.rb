# encoding: utf-8
require_relative 'health-check'
require_relative 'main'
require_relative 'dev' if ENV['RACK_ENV'] == 'development'