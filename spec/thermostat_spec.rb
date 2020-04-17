require './lib/thermostat'

describe Thermostat do
  it " should be able to store the temperature" do
    expect(subject).to respond_to(:temperature)
  end
end