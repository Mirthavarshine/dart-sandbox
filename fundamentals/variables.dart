void main(){
  var city =  "salem";
  city = "chennai"; // allowed to change the value of city
  print(city);

  // city = 345;  Not allowed to change the type of city 
  final name = "mirtha"; // key value can be set only once
  // name = "varshine"; Not allowed to change the value of name // value decide at runtime
  print(name);
  const pi = 3.14; // key value can be set only once and it must be known at compile time
  // pi = 3.14159; Not allowed to change the value of pi
  print(pi);
  //type inference
  var Studentname  = "Mirtha";  // String
var number = 21;         // int
var price = 99.99;    // double
  print(Studentname);
  print(number);
  print(price);
  //Explicit type declaration
  String city1 = "Salem";
  int age = 30;
  double height = 5.8;
  print(city1);
  print(age);
  print(height);
  //dynamic type
  dynamic variable = "Hello";
  print(variable); // Output: Hello 
  variable = 42;
  print(variable); // Output: 42
  // practive example: user input
  dynamic userInput = "John Doe"; // Initially a String
  print('User input: $userInput'); // Output: User input: John Doe
  userInput = 25; // Now an int
  print('User input: $userInput'); // Output: User input: 25
  // var vs final vs const
  var name1 = "Alice"; // Can be changed
  name1 = "Bob"; // Allowed
  print(name1); // Output: Bob
// Problem 1 
var UserName = "Mirtha"; 
int UserAge = 21;
final college = "JIT";
const favroiteNumber = 1000;
print(UserName);
print(UserAge);
print(college);
print(favroiteNumber);
 
}
