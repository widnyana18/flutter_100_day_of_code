import 'package:flutter/material.dart';
import 'package:flutter_100_day_of_code/challenge/day2_weather_ui/widgets/dash_path_painter.dart';
import 'package:flutter_100_day_of_code/challenge/day2_weather_ui/widgets/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class WeatherDetailsView extends StatelessWidget {
  Widget attribute(List<WeatherProps> data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: data
            .map((item) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.label!,
                        style: GoogleFonts.lato(fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 6),
                      Text(
                        item.data!,
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          customCard(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: Stack(
                    children: [
                      CustomPaint(
                        painter: DashPathPainter(),
                        child: Container(),
                      ),
                      CustomPaint(
                        painter: LinePathPainter(),
                        child: Container(),
                      ),
                      Positioned(
                        top: 6,
                        left: width * .42,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/1163/1163662.png',
                          width: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rise 05:51',
                        style: GoogleFonts.lato(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Sunset 18:15',
                        style: GoogleFonts.lato(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    attribute(weatherData.sublist(0, 3)),
                    Spacer(),
                    attribute(weatherData.sublist(3, weatherData.length - 1)),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          customCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weatherData[weatherData.length - 1].label!,
                  style: GoogleFonts.lato(fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.eco),
                    Text(
                      weatherData[weatherData.length - 1].data!,
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * .4,
                            height: 15,
                            child: Marquee(
                              text: 'Overall air quality forecast',
                              style: TextStyle(fontSize: 15),
                              blankSpace: 60.0,
                              velocity: 50.0, //speed
                              pauseAfterRound: Duration(seconds: 1),
                              startPadding: 10.0,
                              accelerationDuration: Duration(seconds: 1),
                              accelerationCurve: Curves.linear,
                              decelerationDuration: Duration(milliseconds: 500),
                              decelerationCurve: Curves.easeOut,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customCard({Widget? child}) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        borderOnForeground: false,
        color: Colors.white24,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: child,
        ),
      );
}
