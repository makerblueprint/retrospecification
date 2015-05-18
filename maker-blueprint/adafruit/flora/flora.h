/**
 * Get the pin which correlates with a given purpose.
 * 
 * @param  char array  purpose
 *   The purpose to search by.
 * @return  int
 *   A which can be used for the given purpose.
 */
int getPin(char* purpose) {
  switch(purpose) {
    case "i2c-data": return 19;
    case "i2c-clock": return 18;
    case "adc0": return 27;
    case "adc1": return 29;
    default: return -1;
  }
}
