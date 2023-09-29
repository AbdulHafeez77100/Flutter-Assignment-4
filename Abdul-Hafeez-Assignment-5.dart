import 'dart:io';

void main() {
  while (true) {
    print("Select an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Area Conversion");
    print("4. Weight Conversion");
    print("5. Time Conversion");
    print("6. Exit");
    print("_______________________________________________________");

    int choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        lengthConversion();
        break;
      case 2:
        temperatureConversion();
        break;
      case 3:
        areaConversion();
        break;
      case 4:
        weightConversion();
        break;
      case 5:
        timeConversion();
        break;
      case 6:
        exit(0);
        break;
      default:
        print("Invalid option. Please select a valid option.");
    }
  }
}

lengthConversion() {
  print("_______________________________________________________");

  print("Select a Length Conversion option:");
  print("1. Meter to Kilometers");
  print("2. Kilometer to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  double result;

  switch (choice) {
    case 1:
      print("Enter length in meters:");
      double meters = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = meters / 1000;
      break;
    case 2:
      print("Enter length in kilometers:");
      double kilometers = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = kilometers * 1000;
      break;
    case 3:
      print("Enter length in feet:");
      double feet = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = feet * 12;
      break;
    case 4:
      print("Enter length in inches:");
      double inches = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = inches / 12;
      break;
    case 5:
      print("Enter length in centimeters:");
      double centimeters = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = centimeters / 100;
      break;
    case 6:
      print("Enter length in meters:");
      double meters = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = meters * 100;
      break;
    default:
      print("Invalid option. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

temperatureConversion() {
  print("_______________________________________________________");

  print("Select a Temperature Conversion option:");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  double result;

  switch (choice) {
    case 1:
      print("Enter temperature in Fahrenheit:");
      double fahrenheit = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = (fahrenheit - 32) * 5 / 9;
      break;
    case 2:
      print("Enter temperature in Celsius:");
      double celsius = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = (celsius * 9 / 5) + 32;
      break;
    default:
      print("Invalid option. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

areaConversion() {
  print("_______________________________________________________");

  print("Select an Area Conversion option:");
  print("1. Square Miles to Square Yards");
  print("2. Square Yards to Square Miles");
  print("3. Square Yards to Square Feet");
  print("4. Square Feet to Square Yards");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  double result;

  switch (choice) {
    case 1:
      print("Enter area in square miles:");
      double squareMiles = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = squareMiles * 1760 * 1760;
      break;
    case 2:
      print("Enter area in square yards:");
      double squareYards = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = squareYards / (1760 * 1760);
      break;
    case 3:
      print("Enter area in square yards:");
      double squareYards = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = squareYards * 9;
      break;
    case 4:
      print("Enter area in square feet:");
      double squareFeet = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = squareFeet / 9;
      break;
    default:
      print("Invalid option. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

weightConversion() {
  print("_______________________________________________________");

  print("Select a Weight Conversion option:");
  print("1. Kilograms to Grams");
  print("2. Grams to Kilograms");
  print("3. Pounds to Kilograms");
  print("4. Kilograms to Tons");
  print("5. Tons to Kilograms");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  double result;

  switch (choice) {
    case 1:
      print("Enter weight in kilograms:");
      double kilograms = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = kilograms * 1000;
      break;
    case 2:
      print("Enter weight in grams:");
      double grams = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = grams / 1000;
      break;
    case 3:
      print("Enter weight in pounds:");
      double pounds = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = pounds * 0.453592;
      break;
    case 4:
      print("Enter weight in kilograms:");
      double kilograms = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = kilograms / 1000;
      break;
    case 5:
      print("Enter weight in tons:");
      double tons = double.tryParse(stdin.readLineSync()!) ?? 0;
      result = tons * 1000;
      break;
    default:
      print("Invalid option. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

timeConversion() {
  print("_______________________________________________________");
  print("Select a Time Conversion option:");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  double result;

  switch (choice) {
    case 1:
      print("Enter time in seconds:");
      int seconds = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = seconds / 60;
      break;
    case 2:
      print("Enter time in minutes:");
      int minutes = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = minutes * 60;
      break;
    case 3:
      print("Enter time in minutes:");
      int minutes = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = minutes / 60;
      break;
    case 4:
      print("Enter time in seconds:");
      int seconds = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = seconds / 3600;
      break;
    case 5:
      print("Enter time in milliseconds:");
      int milliseconds = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = milliseconds / 60000;
      break;
    case 6:
      print("Enter time in milliseconds:");
      int milliseconds = int.tryParse(stdin.readLineSync()!) ?? 0;
      result = milliseconds / 3600000;
      break;
    default:
      print("Invalid option. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

askToContinue() {
  print("_______________________________________________________");

  print("Do you want to continue?");
  print("1. Yes");
  print("2. No");
    print("_______________________________________________________");

  int choice = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("_______________________________________________________");

  if (choice != 1) {
    exit(0);
  }
}
