import 'package:infraero/controller/infraero_controller.dart';
import 'package:infraero/models/airport_model.dart';
import 'package:infraero/models/company_model.dart';
import 'package:infraero/models/flight_model.dart';
import 'package:infraero/models/infraero_model.dart';
import 'package:infraero/models/location_model.dart';

void main() {
  var airportPalmas = Airport(
      airportCode: 'PMW',
      location: Location(
          cityName: 'Palmas', stateAcronym: 'TO', stateName: 'Tocantins'));

  var company = Company(name: 'LATAM', flights: {
    Flight(
        flightIdentifier: '1',
        departureTime: DateTime.now(),
        arrivalTime: DateTime.now().add(Duration(days: 1)),
        departureAirport: airportPalmas,
        arrivalAirport: airportPalmas,
        duration: Duration(minutes: 80)),
    Flight(
        flightIdentifier: '2',
        departureTime: DateTime.now(),
        arrivalTime: DateTime.now().add(Duration(days: 1)),
        departureAirport: airportPalmas,
        arrivalAirport: airportPalmas,
        duration: Duration(minutes: 80)),
  });
  var infraero = Infraero(companies: {company}, airports: {airportPalmas});

  var infraeroController = InfraeroController(infraero);

  print(infraeroController.searchAlllFlights());
}
