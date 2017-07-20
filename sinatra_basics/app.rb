require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    "Hello, World!"
  end

  get '/name' do
    "My name is Chip"
  end

  get '/hometown' do
    @here = '<a href="https://earth.google.com/web/">here</a>'
    "My hometown is #{@here}"
  end

  get '/favorite-album' do
    @album = '<a href="https://goo.gl/xJY4q6">channel orange</a>'
    "My favorite album is #{@album}"
  end
end
