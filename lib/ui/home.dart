import 'package:flutter/material.dart';
import 'package:weather/models/city.dart';
import 'package:weather/models/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants myConstants = Constants();

  //initialization
  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = 'Loading..';
  int humidity = 0;
  int windSpeed = 0;

  var currentDate = 'Loading..';
  String imageUrl = '';
  int woeid = 2122265; // This is the Where on Earth Id for London which is our default city
  String location = 'Moscow'; //Our default city

  //get the cities and selected cities data
  var selectedCities = City.getSelectedCities();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home Page', textAlign: TextAlign.center),
        )
      ),
    );
  }
}
