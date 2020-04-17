class Thermostat
  def self.get_temp
    @temp
  end

  def self.set_temp(temp)
    p 'here'
    p temp
    @temp = temp
  end
 end