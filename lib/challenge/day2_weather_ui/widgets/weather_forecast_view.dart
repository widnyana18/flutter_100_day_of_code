import 'package:flutter/material.dart';
import 'package:flutter_100_day_of_code/challenge/day2_weather_ui/widgets/model.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyWeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              TextButton(
                child: Row(
                  children: [
                    Text(
                      'More details',
                      style: GoogleFonts.lato(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          ...weeklyForecast
              .map(
                (item) => Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Row(
                    children: [
                      Image.network(item.icon!, width: 28),
                      SizedBox(width: 8),
                      Text(
                        item.time!,
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        item.temp!,
                        style: GoogleFonts.lato(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
          TextButton(
            child: Text(
              '5 Day Forecast',
              style: GoogleFonts.lato(
                fontSize: 18,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.white24,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class HourlyWeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hourlyForecast.length,
        itemBuilder: (_, idx) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                hourlyForecast[idx].time!,
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 6),
              Text(
                hourlyForecast[idx].temp!,
                style: GoogleFonts.lato(fontSize: 18),
              ),
              SizedBox(height: 20),
              Image.network(hourlyForecast[idx].icon!, width: 24),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    idx >= 15 || idx <= 22
                        ? Icons.west_rounded
                        : Icons.north_west_rounded,
                    size: 15,
                  ),
                  Text(
                    hourlyForecast[idx].air!,
                    style: GoogleFonts.lato(
                        fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
