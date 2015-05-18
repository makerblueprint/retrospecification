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
    "spi-slave-select": 24
    "spi-master-out-slave-in": 19
    "spi-master-in-slave-out": 21
    "spi-clock": 23
  }

  if purpose in purpose_collection:
    return purpose_collection[purpose]
  else
    return -1
