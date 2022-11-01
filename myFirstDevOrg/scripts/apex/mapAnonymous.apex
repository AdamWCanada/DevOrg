Map<String,String> mapCountryCurrency = new Map<String,String>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Turkish Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
mapCountryCurrency.put('Canada', 'Dollar');
mapCountryCurrency.put('Australia', 'Dollar');
System.debug('Map of country vs currency '+mapCountryCurrency);

string Ind = 'India';
String IndiaCurrency = mapCountryCurrency.get(Ind); // will work
String TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
System.debug('India currency is ' + IndiaCurrency);
System.debug('Turkiye currency is ' + TurkiyeCurrency);

//1.
list<string> allCountries = mapCountryCurrency.keySet();
System.debug('all countries ===> ' +allCountries);

//2.
// Neden bu list?
List<String> allCurrencies = mapCountryCurrency.values();
System.debug('all currencies ===> ' +allCurrencies);

//3.
set<string> countries = mapCountryCurrency.keySet();
system.debug('all countries ---> '+ countries);

for (string eachCountry : countries) {
   system.debug('each country ---> '+ eachCountry); 
   //key is eachcountry ---> following this
   string eachCurrency = mapCountryCurrency.get(eachCountry);
   System.debug('each currency ---> '+eachCurrency);
   system.debug('---------------->');
}