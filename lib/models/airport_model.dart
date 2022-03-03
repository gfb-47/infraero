import 'dart:convert';

import 'location_model.dart';

class Airport {
  String airportCode;
  Location location;

  Airport({
    required this.airportCode,
    required this.location,
  });

  @override
  String toString() =>
      'Airport(airportCode: $airportCode, location: ${location.toString()})';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Airport && other.airportCode == airportCode;
  }
}
