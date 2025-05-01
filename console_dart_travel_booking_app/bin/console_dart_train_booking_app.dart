
import 'dart:io';
import 'package:console_dart_train_booking_app/console_dart_train_booking_app.dart';

//import 'console_dart_travel_booking_app.dart';

void main(List<String> arguments) {
  print("\t✈️🚆🚌 Welcome to Dart Travel Booking!");

  stdout.write("Choose Transport Type(1: Flight, 2: Train, 3: Bus): ");
  String? transportType = stdin.readLineSync();

  Transportation booking;

  switch (transportType) {
    case "1":
      booking = Flight(
        id: 101,
        origin: "Mumbai",
        destination: "Delhi",
        basePrice: 5500,
        classType: "Business",
      );
      break;
    case "2":
      booking = Train(
        id: 202,
        origin: "Chennai",
        destination: "Bangalore",
        basePrice: 850,
        coachType: "Sleeper",
      );
      break;
    case "3":
      booking = Bus(
        id: 303,
        origin: "Pune",
        destination: "Goa",
        basePrice: 650,
        busType: "AC Volvo",
      );
      break;
    default:
      print("Invalid choice. Please try again.");
      return;
  }

  print("\n🎫 Booking Details:");
  booking.info();
}