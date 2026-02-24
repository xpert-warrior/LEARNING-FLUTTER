/// ---------------------------------------------------------
/// PURPOSE: My personal notes and code snippets for learning Dart.
/// ---------------------------------------------------------

void main() {
  // TOPIC 1: Variables and Data Types
  // Dart is statically typed, but 'var' lets it infer the type.
  var name = "Amanat"; // String
  int age = 25; // Integer
  double weight = 83.0; // Double
  bool isLearning = true; // Boolean
  
  print("1. Hello $name, age $age. Learning: $isLearning");

  // TOPIC 2: Null Safety
  // By default, variables cannot be null. Use '?' to allow it.
  String? nullableString; 
  nullableString = null; // This is okay
  // print(nullableString.length); // This would crash! 
  print("2. Nullable string is: $nullableString");

  // TOPIC 3: String Interpolation & Manipulation
  // Using $ or ${} to inject variables into strings.
  String car = "Verna";
  print("3. I drive a ${car.toUpperCase()}.");

  // TOPIC 4: Lists (Arrays)
  // Ordered groups of objects.
  List<String> workoutDays = ["Monday", "Wednesday", "Friday"];
  workoutDays.add("Sunday");
  print("4. Workout schedule: $workoutDays, Total days: ${workoutDays.length}");

  // TOPIC 5: Maps (Key-Value Pairs)
  // Similar to Dictionaries in other languages.
  Map<String, String> officeDetails = {
    "Company": "Equilend",
    "Location": "Chandigarh",
    "Role": "Software Engineer"
  };
  print("5. Working at: ${officeDetails['Company']}");

  // TOPIC 6: Control Flow (If/Else & Switch)
  int speed = 100;
  if (speed > 80) {
    print("6. Slow down! High speed.");
  } else {
    print("6. Cruising speed.");
  }

  // TOPIC 7: Functions (Basic & Arrow)
  // Functions are objects in Dart.
  int add(int a, int b) => a + b; // Arrow function for single line
  print("7. 10 + 20 = ${add(10, 20)}");

  // TOPIC 8: Classes and Objects
  // The blueprint for creating objects.
  var myVehicle = Vehicle("Hyundai", 2015);
  print("8. My car: ${myVehicle.brand}");

  // TOPIC 9: Named Parameters & Required
  // Crucial for Flutter widgets.
  describeUser(name: "Amanat", role: "Dev");

  // TOPIC 10: Asynchronous Programming (Futures)
  // Handling data that takes time to arrive.
  fetchData();
}

// Support for Topic 8
class Vehicle {
  String brand;
  int year;

  // Constructor
  Vehicle(this.brand, this.year);
}

// Support for Topic 9
// Using curly braces {} makes parameters named.
void describeUser({required String name, String? role}) {
  print("9. User: $name, Role: ${role ?? 'Guest'}");
}

// Support for Topic 10
Future<void> fetchData() async {
  print("10. Fetching data from API...");
  // Simulate network delay
  await Future.delayed(Duration(seconds: 1));
  print("10. Data received successfully!");
}
