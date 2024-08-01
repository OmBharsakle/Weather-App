import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class WeatherAPI {

  static final WeatherAPI weatherAPI = WeatherAPI();

  Future<Map> fetchWeatherData(String search) async {
    final String url = "https://api.weatherapi.com/v1/current.json?key=2fa2386ccc0540e0822113155243007&q=$search";
    Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      return json;
    } else {
      throw "Unexpected error occurred";
    }
  }
}
