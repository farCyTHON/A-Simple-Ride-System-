// Simple Ride System in Dart

class Person {

  String _name;
  int _age;


  Person(this._name, this._age);

 
  String get name => _name;
  int get age => _age;


  String getInfo() {
    return "Name: $_name, Age: $_age";
  }
}


class Driver extends Person {
  String vehicle;

  // Constructor
  Driver(String name, int age, this.vehicle) : super(name, age);

  @override
  String getInfo() {
    return "Name: $name, Age: $age, Vehicle: $vehicle";
  }
}


abstract class Ride {
  double calculateFare(double distance);
}


class BikeRide implements Ride {

  @override
  double calculateFare(double distance) {
    double farePerKm = 15.0; // 15 taka per km
    return distance * farePerKm;
  }
}


void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print("Total Fare: ${fare.toStringAsFixed(2)} Taka");
}


void main() {
 
  Driver driver1 = Driver("Rahim", 25, "Bike");

 
  print(driver1.getInfo());

  
  BikeRide bikeRide = BikeRide();


  double distance = 10.0; // just an example distance
  printFare(bikeRide, distance);
}
