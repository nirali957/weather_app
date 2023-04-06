import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';

// class WeatherService {
//   final String apiKey;
//   final String baseUrl = "https://api.openweathermap.org/data/2.5/weather?q=surat&appid=ce5b865fe40088b6cc2718ea40992f94";
//   WeatherService({required this.apiKey});
//
//   Future<Weather> getWeather(String cityName) async {
//     final url = "$baseUrl?q=$cityName&appid=$apiKey&units=metric";
//     final response = await http.get(Uri.parse(url));
//
//     if (response.statusCode == 200) {
//       final weatherData = jsonDecode(response.body);
//
//       final cityName = weatherData['name'];
//       final temperature = weatherData['main']['temp'];
//       final description = weatherData['weather'][0]['description'];
//       final icon = weatherData['weather'][0]['icon'];
//
//       return Weather(cityName: cityName, temperature: temperature, description: description, icon: icon);
//     } else {
//       throw Exception("Failed to load weather data");
//     }
//   }
// }

class WeatherService {
  getWeather(String? city) async {
    var url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=ce5b865fe40088b6cc2718ea40992f94";
    final response = await http.get(Uri.parse(url));
    debugPrint("-------->${response.body}");

    try {
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      throw Exception();
    }
  }
}
