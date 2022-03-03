import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

import 'flight_model.dart';

class Company {
  String uid;
  String name;
  Set<Flight> flights;

  Company({
    required this.name,
    required this.flights,
  }) : uid = Uuid().v1();

  @override
  //TODO: Print flights correctly
  String toString() =>
      'Company(uid: $uid, name: $name, flights: ${flights.toString})';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Company &&
        other.uid == uid &&
        other.name == name &&
        listEquals(other.flights, flights);
  }
}
