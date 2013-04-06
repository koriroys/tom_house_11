class House

  attr_reader :ac, :temperature, :max_temp, :min_temp

  def initialize
    @temperature = 70
    @ac = true
  end

  def update_temperature!
    @ac ? @temperature -= 2 : @temperature += 1
  end

  def toggle_ac
    @ac = !@ac
  end

  def turn_on_ac
    @ac = true
  end

  def turn_off_ac
    @ac = false
  end
end