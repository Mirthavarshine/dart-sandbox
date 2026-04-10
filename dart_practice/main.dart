// // void printPerson (){
// // var persondata = ('Ravi', 25);
// // print(persondata.$1);
// // print(persondata.$2);
// // }

// // void printPerson2 (){
// // var person2data = (name: 'Priya', age: 28);
// // print(person2data.name); 
// // print(person2data.age);  
// // }

// // void printUser (){
// // var userdata = ('admin', id: 101, active: true);
// // print(userdata.$1);     
// // print(userdata.id);     
// // print(userdata.active); 
// // }
// // void main(){
// // printPerson();
// // printPerson2();
// // printUser();
// // }

// // A function that fetches a student's result
// ({String name, int marks, String grade, bool passed}) getResult(String studentId) {
//   // Imagine this fetches from a database
//   return (
//     name: 'Kavya',
//     marks: 87,
//     grade: 'A',
//     passed: false,
//   );
// }

// void greet() {
//   var result = getResult('S001');

//   print('Student: ${result.name}');
//   print('Marks: ${result.marks}/100');
//   print('Grade: ${result.grade}');
//   print(result.passed ? 'Status: Pass 🎉' : 'Status: Fail');
// // Real-time example: API response handler
// (int statusCode, String message) fetchData() {
//   return (200, 'Success');
// }

// void handleResponse() {
//   var response = fetchData();

//   switch (response) {
//     case (200, var msg):
//       print('OK: $msg');
//     case (404, var msg):
//       print('Not found: $msg');
//     case (500, var msg):
//       print('Server error: $msg');
//     default:
//       print('Unknown: ${response.$2}');
//   }
// } 
// }

// void main(){
//   List <Object> cart = [23,23,234,424,"Mirtha",true];
//   cart.add(345435);
//   for (var mark in cart){
//     print(mark);
//   }
// }

// void main(){
//   List<int> items = [1, 2];

// int num = items[0];
// print (num);
// }

// typedef operation = int Function(int a ,int b);
// typedef operation2 = double Function(double a ,double b);
// int add(int a, int b) => a+b;
// double divide(double a , double b) => a/b;
// void main(){
//   operation op1 = add; 
//   operation2 op2  = divide;
//   print(op1(34,23));
//   print(op2(34.0,23.0));

// }
//  void main (){
//   var message = StringBuffer('Dart is fun');
// for (var i = 0; i < 5; i++) {
//   message.write('!');
// }
// print(message.toString());
//  }