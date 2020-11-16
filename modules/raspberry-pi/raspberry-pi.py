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
    "i2c-data": 3
    "i2c-clock": 5
    
    "spi-chip-select": 24
    "spi-controller-out-peripheral-in": 19
    "spi-controller-in-peripheral-out": 21
    "spi-clock": 23
  }

  if purpose in purpose_collection:
    return purpose_collection[purpose]
  else
    return -1
