ENV['RACK_ENV'] = 'test'

require './app'
require 'rack/test'

describe 'Application' do
  include Rack::Test::Methods

  let(:app) {  Application.new }
  let(:here) { '<a href="https://earth.google.com/web/">here</a>' }
  let(:album) {'<a href="https://goo.gl/xJY4q6">channel orange</a>' }

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello, World!")
  end

  it "displays a name" do
    get '/name'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("My name is Chip")
  end

  it "displays hometown" do
    get '/hometown'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("My hometown is #{here}")
  end

  it 'displays favorite album' do
    get '/favorite-album'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("My favorite album is #{album}")
  end
end
