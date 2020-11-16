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
      return 2;
    
    case "i2c-clock":
      return 3;
    
    case "adc":
    case "adc0":
    case "adc-0":
      return 18;
    
    case "one-wire-data":
    case "adc1":
    case "adc-1":
      return 19;
    
    case "spi-chip-select":
      return 10;
    
    case "spi-controller-out-peripheral-in":
      return 16;
    
    case "spi-controller-in-peripheral-out":
      return 14;
    
    case "spi-clock":
      return 15;
    
    default:
      return -1;
  }
}
