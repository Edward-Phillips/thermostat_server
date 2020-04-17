require './lib/thermostat'

describe Thermostat do
  it " can get the thermostat temperature" do
    expect(Thermostat).to respond_to(:get_temp)
  end

  it " can set the thermonstat temperature" do
    expect(Thermostat).to respond_to(:set_temp)
  end

  it " stores a new temperature" do
    Thermostat.set_temp(25)
    expect(Thermostat.get_temp).to eq(25)
  end
end