/**
 * Get the pin which correlates with a given purpose.
 * 
 * @param  char array  purpose
 *   The purpose to search by.
 * @return  int
 *   A pin which can be used for the given purpose.
 */
int getPin(char* purpose) {
  switch(purpose) {
    case "i2c-data":
      return 18;

    case "i2c-clock":
      return 19;
    
    case "adc":
    case "adc0":
    case "adc-0":
      return 14;
    
    case "one-wire-data":
    case "adc1":
    case "adc-1":
      return 15;
    
    case "spi-slave-select":
      return 10;
    
    case "spi-master-out-slave-in":
      return 11;
    
    case "spi-master-in-slave-out":
      return 12;
    
    case "spi-clock":
      return 13;
    
    default:
      return -1;
  }
}
