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
    case "i2c-data": return 0;
    case "i2c-clock": return 2;
    case "adc0": return 0;
    case "adc1": return 1;
    case "spi-slave-select": return 3;
    case "spi-master-out-slave-in": return 0;
    case "spi-master-in-slave-out": return 1;
    case "spi-clock": return 2;
    default: return -1;
  }
}
