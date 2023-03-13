import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/widgets.dart';

class WeatherUi extends StatelessWidget {
  static String title = 'Weather App';
  static ThemeMode theme = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    Widget license = Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Data provided by  ',
            style: GoogleFonts.lato(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          Icon(Icons.brightness_high, size: 16),
          Text(
            ' AccuWeather',
            style: GoogleFonts.lato(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );

    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF555D66),
              Color(0xFF555D66),
              Color(0xFF587596),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (_, __) => [
            WeatherHeader(),
          ],
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                WeeklyWeatherForecast(),
                SizedBox(height: 50),
                HourlyWeatherForecast(),
                SizedBox(height: 25),
                WeatherDetailsView(),
                license,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
