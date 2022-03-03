import 'dart:convert';

class Location {
  String cityName;
  String stateName;
  String stateAcronym;

  Location({
    required this.cityName,
    required this.stateName,
    required this.stateAcronym,
  });

  @override
  String toString() =>
      'Location(cityName: $cityName, stateName: $stateName, stateAcronym: $stateAcronym)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.cityName == cityName &&
        other.stateName == stateName &&
        other.stateAcronym == stateAcronym;
  }
}
