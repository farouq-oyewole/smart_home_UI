// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:smart_home_app/models/weather_model.dart';
import 'package:smart_home_app/services/weather_service.dart';

class WeatherShow extends StatefulWidget {
  const WeatherShow({super.key});

  @override
  State<WeatherShow> createState() => _WeatherShowState();
}

class _WeatherShowState extends State<WeatherShow> {

  // api key
  final _weatherService = WeatherService('fcc35fc4c69ee017dc55667ae0fb2250');
  Weather? _weather;
  
  // fetch weather
  _fetchWeather() async{
    // get the current city
    String cityName = await _weatherService.getCurrentCity();

    // get weather for city
    try{
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }

    // any errors 
    catch (e) {
      print(e);
    }
  }
  // weather animations 

  // init state
  @override
  void initState() {
    super.initState();

    // fetch weather on startup
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Image.asset("assets/clear-sky.png", width:80, height: 90,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // city name
                                Text(_weather?.cityName ?? "Loading city..",style: TextStyle(color: Colors.white,fontSize: 15),),
                                Text("Sunny",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                              ],
                            ),
                            // temperature
                          Text('${double.tryParse(_weather?.temperature ?? '0')?.round() ?? 0}°C', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 23),),
                        ],
                      );
  }
}