import 'package:infraero/models/airport_model.dart';
import 'package:infraero/models/company_model.dart';
import 'package:infraero/models/flight_model.dart';
import 'package:infraero/models/infraero_model.dart';
import 'package:infraero/models/location_model.dart';

class InfraeroController {
  final Infraero _infraero;

  InfraeroController(this._infraero);

  Set<Company>? searchAllCompanies() {
    return _infraero.companies;
  }

  Set<Airport>? searchAllAirports() {
    return _infraero.airports;
  }

  Set<Flight>? searchAlllFlights() {
    var list = <Flight>{};
    for (var company in _infraero.companies) {
      for (var flight in company.flights) {
        list.add(flight);
      }
    }
    return list;
  }

  Set<Flight>? searchFlightsByCompany({required Company company}) {
    return company.flights;
  }

  Set<Flight>? searchFlightsByArrivalAirport({required Location location}) {
    var list = <Flight>{};
    for (var company in _infraero.companies) {
      list.addAll(company.flights
          .where((flight) => flight.arrivalAirport.location == location));
    }
    return list;
  }

  Set<Flight>? searchFlightsByDepartureAirport({required Location location}) {
    var list = <Flight>{};
    for (var company in _infraero.companies) {
      list.addAll(company.flights
          .where((flight) => flight.departureAirport.location == location));
    }
    return list;
  }

  Flight? searchFlightByFlightIdentifier({required String flightIdentifier}) {
    Flight? flight;
    for (var company in _infraero.companies) {
      flight = company.flights
          .singleWhere((flight) => flight.flightIdentifier == flightIdentifier);
    }
    return flight;
  }
}
