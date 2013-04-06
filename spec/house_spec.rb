#Let's write some code to model the behavior of a house and its thermostats.
#For this challenge, you should define a House class. Here is the behavior you should model:

require 'spec_helper'

describe 'house class' do
  it 'has a current temperature'
  it 'can update its temperature'
  it 'decreases the temperature by 2 when the ac is on'
  it 'increases the temperature by 1 when the heater is on'
  it 'can turn the heater on'
  it 'can turn the heater off'
  it 'can turn the ac on'
  it 'can turn the ac off'

end



# each house has its own current temperature
# each house has a method called update_temperature! which will either increase or decrease the temperature depending on if the heater or the air conditioner is on. It will also print the current temperature to the screen.
# when the heater is on, the current temperature increases by 1 unit
# when the air conditioner is on, the current temperature decreases by 2 units
# you can turn the heater on/off
# you can turn the air conditioner on/off