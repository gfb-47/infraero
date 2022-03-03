import 'package:infraero/models/airport_model.dart';

class Flight {
  String flightIdentifier;
  DateTime departureTime;
  DateTime arrivalTime;
  Airport departureAirport;
  Airport arrivalAirport;
  Duration duration;

  Flight({
    required this.flightIdentifier,
    required this.departureTime,
    required this.arrivalTime,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.duration,
  });

  @override
  String toString() {
    return '''Flight(
      identifier: $flightIdentifier,\n 
      departureTime: $departureTime,\n
      arrivalTime: $arrivalTime,\n
      departureAirport: $departureAirport,\n 
      arrivalAirport: $arrivalAirport,\n 
      duration: $duration)
      ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Flight && other.flightIdentifier == flightIdentifier;
  }

  @override
  int get hashCode => flightIdentifier.hashCode;
}
