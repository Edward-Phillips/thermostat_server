require 'sinatra'
require 'json'

class Thermostat < Sinatra::Base

  get "/" do
    'HALLO WORLD'
  end

  get "/temperature/" do
    JSON.generate(20)
  end
end