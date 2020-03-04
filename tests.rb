# encoding: utf-8
ENV['APP_ENV'] = 'test'

require 'minitest/autorun'
require 'minitest/reporters'
require 'rack/test'
require_relative 'app/init'

Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

require_relative 'app/tests/main_test'