require 'sinatra/base'
  
class TestServer < Sinatra::Base
  
  get '/' do
    "#{IO.read(File.expand_path("../index.html", __FILE__))}"
  end
  
  get '/jquery-1.6.2.min.js' do
    "#{IO.read(File.expand_path("../jquery-1.6.2.min.js", __FILE__))}"
  end
  
  post '/ajax' do
    sleep(10)
    "OK with #{rand(10000)}"
  end

end

if __FILE__ == $0
  TestServer.run!
end

