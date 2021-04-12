class HomePageController {
  
  convert (String currentCurrency, String converterCurrency, double currentCurrencyPrice) {

    if (currentCurrency == 'Real') {

      if (converterCurrency == 'Dolar') {
        return currentCurrencyPrice * 5.7;
      } else if (converterCurrency == 'Euro') {
        return currentCurrencyPrice * 6.8;
      }

    } else if (currentCurrency == 'Dolar') {

      if (converterCurrency == 'Real') {
        return currentCurrencyPrice * 5.7;
      } else if (converterCurrency == 'Euro') {
        return currentCurrencyPrice * 0.84;
      }

    } else {
      if (converterCurrency == 'Real') {
        return currentCurrencyPrice * 5.8;
      } else if (converterCurrency == 'Dolar') {
        return currentCurrencyPrice * 1.16;
      }
    }

    return currentCurrencyPrice;
  }

}
