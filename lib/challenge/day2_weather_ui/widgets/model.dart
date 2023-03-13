const String _bright =
    'https://cdn-icons-png.flaticon.com/512/1163/1163662.png';
const String _night = 'https://cdn-icons-png.flaticon.com/512/1163/1163645.png';
const String _cloudy =
    'https://cdn-icons-png.flaticon.com/512/3208/3208752.png';
const String _cloudyNight =
    'https://cdn-icons-png.flaticon.com/512/1163/1163630.png';
const String _rainy = 'https://cdn-icons-png.flaticon.com/512/3075/3075858.png';
const String _thunder =
    'https://cdn-icons-png.flaticon.com/512/3236/3236860.png';

List<WeatherPeriodic> weeklyForecast = [
  WeatherPeriodic(icon: _bright, time: 'Today · Bright', temp: '31° / 24°'),
  WeatherPeriodic(icon: _cloudy, time: 'Tomorrow · Cloudy', temp: '30° / 24°'),
  WeatherPeriodic(icon: _bright, time: 'Thursday · Bright', temp: '30° / 24°'),
];

List<WeatherPeriodic> hourlyForecast = [
  WeatherPeriodic(icon: _bright, time: 'Now', air: '9.7km/j', temp: '30°'),
  WeatherPeriodic(icon: _cloudy, time: '12.00', air: '14.8km/j', temp: '30°'),
  WeatherPeriodic(icon: _cloudy, time: '13.00', air: '14.8km/j', temp: '31°'),
  WeatherPeriodic(icon: _bright, time: '14.00', air: '14.8km/j', temp: '30°'),
  WeatherPeriodic(icon: _bright, time: '15.00', air: '14.8km/j', temp: '30°'),
  WeatherPeriodic(icon: _bright, time: '16.00', air: '14.8km/j', temp: '29°'),
  WeatherPeriodic(icon: _night, time: '17.00', air: '13.0km/j', temp: '29°'),
  WeatherPeriodic(icon: _thunder, time: '18.00', air: '11.1km/j', temp: '28°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '18.15', air: '11.1km/j', temp: 'Sunset'),
  WeatherPeriodic(icon: _rainy, time: '19.00', air: '9.3km/j', temp: '27°'),
  WeatherPeriodic(icon: _rainy, time: '20.00', air: '9.3km/j', temp: '26°'),
  WeatherPeriodic(icon: _rainy, time: '21.00', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '22.00', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '23.00', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '2/11', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '01.00', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '02.00', air: '7.4km/j', temp: '25°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '03.00', air: '7.4km/j', temp: '25°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '04.00', air: '7.4km/j', temp: '25°'),
  WeatherPeriodic(
      icon: _cloudyNight, time: '05.00', air: '7.4km/j', temp: '24°'),
  WeatherPeriodic(
      icon: _cloudy, time: '05.50', air: '7.4km/j', temp: 'Sunrise'),
  WeatherPeriodic(icon: _cloudy, time: '06.00', air: '7.4km/j', temp: '25°'),
  WeatherPeriodic(icon: _cloudy, time: '07.00', air: '7.4km/j', temp: '26°'),
  WeatherPeriodic(icon: _cloudy, time: '08.00', air: '9.3km/j', temp: '27°'),
  WeatherPeriodic(icon: _cloudy, time: '09.00', air: '9.3km/j', temp: '28°'),
];

List<WeatherProps> weatherData = [
  WeatherProps(label: 'Temperature', data: '28°C'),
  WeatherProps(label: 'Chance of rain', data: '25%'),
  WeatherProps(label: 'Wind velocity', data: '22.6km/j'),
  WeatherProps(label: 'Humidity', data: '82%'),
  WeatherProps(label: 'Pressure', data: '1008mbar'),
  WeatherProps(label: 'UV index', data: '0'),
  WeatherProps(label: 'Air quality index', data: '16'),
];

class WeatherPeriodic {
  WeatherPeriodic({
    this.icon,
    this.time,
    this.air,
    this.temp,
  });

  final String? icon, time, air, temp;
}

class WeatherProps {
  WeatherProps({this.label, this.data});

  final String? label, data;
}
