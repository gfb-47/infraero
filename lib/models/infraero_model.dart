import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:infraero/models/airport_model.dart';
import 'package:infraero/models/company_model.dart';

class Infraero {
  Set<Company> companies;
  Set<Airport> airports;

  Infraero({
    required this.companies,
    required this.airports,
  });

  @override
  String toString() => 'Infraero(companies: $companies, airports: $airports)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Infraero &&
        listEquals(other.companies, companies) &&
        listEquals(other.airports, airports);
  }
}
