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
      return 0;

    case "i2c-clock":
      return 2;

    case "adc":
    case "adc0":
    case "adc-0":
      return 0;

    case "one-wire-data":
    case "adc1":
    case "adc-1":
      return 1;

    case "spi-chip-select":
      return 3;

    case "spi-controller-out-peripheral-in":
      return 0;

    case "spi-controller-in-peripheral-out":
      return 1;

    case "spi-clock":
      return 2;

    default:
      return -1;
  }
}
