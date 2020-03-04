# encoding: utf-8
class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App.new
  end

  def test_displays_main_page
    get '/'
    assert last_response.ok?
    response = JSON.parse(last_response.body)
    assert_equal 3, response.count
    assert response['site'].include?('home')
    assert response['content'].include?('Put this in your pipe & smoke it!')
    assert response['model'].include?('Using a model')
  end

  def test_health_check
    get '/health-check'
    assert last_response.ok?
  end
end