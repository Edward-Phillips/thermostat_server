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

  post '/power-saving/' do
    Thermostat.set_power_saving(params['saving'])
  end

  get '/power-saving/' do
    Thermostat.get_power_saving
  end
end