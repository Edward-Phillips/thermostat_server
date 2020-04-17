class Thermostat
  def self.get_temp
    @temp
  end

  def self.set_temp(temp)
    @temp = temp
  end

  def self.get_power_saving
    @power_saving
  end

  def self.set_power_saving(power_saving)
    @power_saving = power_saving
  end
 end