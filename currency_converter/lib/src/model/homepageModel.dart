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
  getCurrentCurrency () => this.currentCurrency;

  getConverterCurrency () => this.converterCurrency;

  getCurrentCurrencyPrice () => this.currentCurrencyPrice;

  getConverterCurrencyPrice () => this.converterCurrencyPrice;

  // setters
  void setCurrentCurrency (double currentCurrencyPrice) {
    this.currentCurrencyPrice = currentCurrencyPrice;
  }  

  void setConverterCurrency (double converterCurrencyPrice) {
    this.converterCurrencyPrice = converterCurrencyPrice;
  }

  void setCurrentCurrencyPrice (double currentCurrencyPrice) {
    this.currentCurrencyPrice = currentCurrencyPrice;
  }

  void setConverterCurrencyPrice (double converterCurrencyPrice) {
    this.converterCurrencyPrice = converterCurrencyPrice;
  }
}
