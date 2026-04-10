// void main() {
//   // 1. Simple function call
//   greet();

//   // 2. Function with parameter
//   sayHello("Mirtha");

//   // 3. Function with return value
//   int sum = add(10, 5);
//   print("Sum: $sum");

//   // 4. Arrow function
//   print("Multiply: ${multiply(3, 4)}");

//   // 5. Named parameters
//   userInfo(name: "Mirtha", age: 21);

//   // 6. Default parameter
//   printMessage();

//   // 7. Required parameter
//   welcome(name: "Mirtha");

//   // 8. Nullable + safe operator
//   printLength(null);
// }

// // 1. Simple function
// void greet() {
//   print("Hello!");
// }

// // 2. Function with parameter
// void sayHello(String name) {
//   print("Hello $name");
// }

// // 3. Function with return type
// int add(int a, int b) {
//   return a + b;
// }

// // 4. Arrow function (short form)
// int multiply(int a, int b) => a * b;

// // 5. Named parameters
// void userInfo({required String name, required int age}) {
//   print("Name: $name, Age: $age");
// }

// // 6. Default parameter
// void printMessage({String message = "Hello"}) {
//   print(message);
// }

// // 7. Required parameter
// void welcome({required String name}) {
//   print("Welcome $name");
// }

// // 8. Nullable + safe access
// void printLength(String? text) {
//   print(text?.length);
// // }

void main() {
  String name = "Mirtha";
  int age = 21;
  List<int> marks = [80, 90, 85];

  int total = calculateTotal(marks);

  display(name: name, age: age, total: total);
}

int calculateTotal(List<int> marks) {
  int sum = 100;

  for (int mark in marks) {
    sum += mark;
  }

  return sum;
}

void display({required String name, required int age, required int total}) {
  print("Name: $name");
  print("Age: $age");
  print("Total Marks: $total");

// Named parameters example
  void showInfo({required String name, required int age}) {
    print("Name: $name, Age: $age");
  }

  showInfo(name: "Mirtha", age: 21);
// Unnamed parameters example
  void showDetails(String name, int age) {
    print("Name: $name, Age: $age");
  }

  showDetails("Mirtha", 21);

  // Default parameters example
  // ignore: unused_element
  void greet({String message = "Hello"}) {
    print(message); 
    greet(); 
    greet(message: "Hi there!"); 

}
// Nullable parameters example
  void printLength(String? text) {
    print(text?.length); 
  }

  printLength("Mirtha"); // Output: 6
  printLength(null); // Output: null

  // Arrow function example
  int add(int a, int b) => a + b;
  print(add(10, 5)); // Output: 15  

//   // Function with return type example
//   String getGreeting(String name) {
//     return "Hello, $name!";

// }
// required parameters example
  void welcome({required String name}) {
    print("Welcome, $name!");
  }

  welcome(name: "Mirtha"); 
}
