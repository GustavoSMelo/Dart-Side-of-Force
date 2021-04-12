class HomePageModel {
  
  // attributes
  String currentCurrency = '';
  String converterCurrency = '';

  double currentCurrencyPrice = 0.0;
  double converterCurrencyPrice = 0.0;

  // constructor
  HomePageModel (String currentCurrency, 
  String converterCurrency, 
  double currentCurrencyPrice,
  double converterCurrencyPrice) {
    this.currentCurrency = currentCurrency;
    this.converterCurrency = converterCurrency;
    this.currentCurrencyPrice = currentCurrencyPrice;
    this.converterCurrencyPrice = converterCurrencyPrice;
  }

  // getters
  dynamic getCurrentCurrency () => this.currentCurrency;

  dynamic getConverterCurrency () => this.converterCurrency;
}
