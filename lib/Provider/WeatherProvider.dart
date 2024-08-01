import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/API/WeatherAPI.dart';
import 'package:weather_app/Modal/WeatherModal.dart';

class WeatherProvider with ChangeNotifier
{
  WeatherModal? weatherModal;
  List<String> favoritesWeather=[];
  bool isSelected=true;
  bool isSearch=true;
  bool isLoading = true;

  Future<void> fetchData()
  async {
    Map json = await WeatherAPI.weatherAPI.fetchWeatherData('Surat');
    weatherModal = WeatherModal.fromJson(json);
    isLoading = false;
    print('-------------${weatherModal!.current.condition.icon}--------------');
    notifyListeners();
  }
  void darkMode()
  {
    isSelected=!isSelected;
    notifyListeners();
  }
  void isSearchBar()
  {
    isSearch=!isSearch;
    notifyListeners();
  }
  Future<void> isSearchData(String search)
  async {
    Map json = await WeatherAPI.weatherAPI.fetchWeatherData(search);
    weatherModal = WeatherModal.fromJson(json);
    isSearch=true;
    notifyListeners();
  }
  Future<void> favoriteData(
      {required dynamic city,
      required dynamic tem,
      required dynamic country,
      required dynamic condition,
      required dynamic icon})
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    favoritesWeather.add('$city-$tem-$country-$condition-$icon');
    await prefs.setStringList('items',favoritesWeather);
  }

  Future<void> favoritesWeatherGet()
  async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    favoritesWeather = prefs.getStringList('items')??[];
    print('---------------------------');
    notifyListeners();
  }
  WeatherProvider()
  {
    favoritesWeatherGet();
    fetchData();
  }
}