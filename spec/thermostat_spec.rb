require './lib/thermostat'

describe Thermostat do
  it " should be able to store the temperature" do
    expect(subject).to respond_to(:temperature)
  end

  it " should be able to update the temperature" do 
    expect(subject).to respond_to(:temperature=) 
  end

  it " should be able to store whether the power saving mode is on" do
    expect(subject).to respond_to(:power_saving)
  end

  it " should be able to update whether the power saving mode is on" do
    expect(subject).to respond_to(:power_saving=)
  end

  it " should retain the temperature" do
    subject.temperature = 25
    expect(subject.temperature).to eq(25)
  end

  it " can get the thermostat temperature" do
    expect(Thermostat).to respond_to(:get_temp)
  end

  it " can set the thermonstat temperature" do
    expect(Thermostat).to respond_to(:set_temp)
  end
end