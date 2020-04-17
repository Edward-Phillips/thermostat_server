require 'sinatra'
require 'json'
require './lib/thermostat'

class Thermostat_server < Sinatra::Base

  get "/" do
    'HALLO WORLD'
  end

  get "/temperature/" do
    Thermostat.get_temp;
  end

  post '/temperature/' do
    Thermostat.set_temp(params['temp'])
  end
end