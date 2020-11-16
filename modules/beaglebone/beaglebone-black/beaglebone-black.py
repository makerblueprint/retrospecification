# 
# Get the pin which correlates with a given purpose.
# 
# @param  char array  purpose
#   The purpose to search by.
# @return  int
#   A pin which can be used for the given purpose.
#
def getPin(purpose):
  purpose_collection = {
    "i2c-data": 20
    "i2c-clock": 19

    "adc": 39
    "adc0": 39
    "adc-0": 39
    
    "one-wire-data": 40
    "adc1": 40
    "adc-1": 40
    
    "spi-chip-select": 28
    "spi-controller-out-peripheral-in": 30
    "spi-controller-in-peripheral-out": 29
    "spi-clock": 31
  }

  if purpose in purpose_collection:
    return purpose_collection[purpose]
  else
    return -1
