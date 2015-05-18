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
    case "i2c-data": return 2;
    case "i2c-clock": return 3;
    case "adc0": return 18;
    case "adc1": return 19;
    case "spi-slave-select": return 10;
    case "spi-master-out-slave-in": return 16;
    case "spi-master-in-slave-out": return 14;
    case "spi-clock": return 15;
    default: return -1;
  }
}
