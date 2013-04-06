#Let's write some code to model the behavior of a house and its thermostats.
#For this challenge, you should define a House class. Here is the behavior you should model:

require 'spec_helper'
require 'pry'
require 'house'

describe 'house class' do
  it 'has sets a default current temperature of 70' do
    house = House.new
    expect(house.temperature).to eq(70)
  end

  it 'turns on the ac by default' do
    house = House.new
    expect(house.ac).to be_true
  end

  context 'when ac is on' do
    it 'decreases the temperature by 2 when update_temperature is called' do
      house = House.new
      house.update_temperature!
      expect(house.temperature).to eq(68)
    end

    it 'can be turned off' do
      house = House.new
      house.toggle_ac
      expect(house.ac).to be_false
      house.toggle_ac
      expect(house.ac).to be_true
    end
  end

  context 'when ac is off' do
    it 'increase the temperature by 1 when update_temperature is called' do
      house = House.new
      house.turn_off_ac
      house.update_temperature!
      expect(house.temperature).to eq(71)
    end

    it 'can turn on the ac which also turns off the heater' do
      house = House.new
      house.turn_on_ac
      expect(house.ac).to be_true
    end
  end

  context 'extra credit' do

    it 'each house has its own minimum and maximum temperature' do
      max_temp, min_temp = 100, 50
      house = House.new(max_temp: max_temp, min_temp: min_temp)
      expect(house.max_temp).to eq(max_temp)
      expect(house.min_temp).to eq(min_temp)
    end

    it 'when temperature reaches max, ac on' do
      max_temp = 100
      house = House.new(max_temp: max_temp)
      house.stub(:temperature).and_return(max_temp)
      house.update_temperature!
      expect(house.ac).to be_true
    end

    it 'when temperature reaches min, ac off' do
      min_temp = 50
      house = House.new(min_temp: min_temp)
      house.stub(:temperature).and_return(min_temp)
      house.update_temperature!
      expect(house.ac).to be_false
    end
    # when the current_temperature reaches minimum temperature,
    #   the heater turns on and the air conditioner turns off (if it is on)





    # each house has its own minimum and maximum temperature
    # when the current_temperature reaches maximum temperature,
    #   the air conditioner turns on and the heater turns off (if it is on)
    # when the current_temperature reaches minimum temperature,
    #   the heater turns on and the air conditioner turns off (if it is on)
  end
end