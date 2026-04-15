// class Student {
//   // class to represent student data
//   String name; // each student has properties
//   int age;
//   String gender;
//   List<int> marks;

//   Student(
//     this.name,
//     this.age,
//     this.gender,
//     this.marks,
//   ); // constructor to initialize properties

//   int getTotalMarks() {
//     return marks.reduce((a, b) => a + b);
//   }
// }

// List<Student> students = [
//   Student("Mirtha", 21, "Female", [80, 90, 85]),
//   Student("John", 22, "Male", [70, 60, 75]),
//   Student("Arun", 20, "Male", [95, 92, 90]),
// ];

// abstract class Payment {
//   void pay(double amount);
// }

// class CreditCardPayment extends Payment {
//   @override
//   void pay(double amount) {
//     if (amount <= 0) {
//       print("Invalid amount");
//       return;
//     }
//     print("Paid ₹$amount using Credit Card (XXXX-5678)");
//   }
// }

// class UpiPayment extends Payment {
//   @override
//   void pay(double amount) {
//     if (amount <= 0) {
//       print("Invalid amount");
//       return;
//     }
//     print("Paid ₹$amount using UPI (TXN123ABC)");
//   }
// }

// class CashPayment extends Payment {
//   @override
//   void pay(double amount) {
//     if (amount <= 0) {
//       print("Invalid amount");
//       return;
//     }
//     print("Paid ₹$amount using Cash");
//   }
// }

// void processPayment(Payment payment, double amount) {
//   payment.pay(amount);
// }

// mixin Attendance {
//   // mixin for attendance related functionality
//   Performance getPerformance(int leaves) {
//     if (leaves == 0) {
//       return Performance.excellent;
//     } else if (leaves <= 2) {
//       return Performance.good;
//     } else if (leaves == 3) {
//       return Performance.average;
//     } else {
//       return Performance.bad;
//     }
//   }
// }

// enum Performance {
//   excellent,
//   good,
//   average,
//   bad,
// } // performance levels based on attendance

// abstract class Employee with Attendance {
//   String id;
//   String name;
//   int leaves;

//   Employee(this.id, this.name, this.leaves);

//   double calculateSalary();
// }

// class FullTimeEmployee extends Employee {
//   double baseSalary;

//   FullTimeEmployee(String id, String name, int leaves, this.baseSalary)
//     : super(id, name, leaves);

//   @override
//   double calculateSalary() {
//     double perDay = baseSalary / 30;
//     double loss = perDay * leaves;
//     double salary = baseSalary - loss;

//     if (salary > 75000) {
//       salary *= 0.9; // tax
//     }

//     return salary;
//   }
// }

// class ContractEmployee extends Employee {
//   double hourlyRate;
//   int hoursWorked;

//   ContractEmployee(
//     String id,
//     String name,
//     int leaves,
//     this.hourlyRate,
//     this.hoursWorked,
//   ) : super(id, name, leaves);

//   @override
//   double calculateSalary() {
//     double salary = hourlyRate * hoursWorked;

//     if (salary > 75000) {
//       salary *= 0.9;
//     }

//     return salary;
//   }
// }

// class Intern extends Employee {
//   double stipend;

//   Intern(String id, String name, int leaves, this.stipend)
//     : super(id, name, leaves);

//   @override
//   double calculateSalary() {
//     int extraLeaves = leaves > 2 ? leaves - 2 : 0;
//     double perDay = stipend / 30;

//     return stipend - (extraLeaves * perDay);
//   }
// }

// void printEmployee(Employee emp) {
//   // it accepts abstract class and allowing it to handle a subclass
//   print("Employee ID: ${emp.id}"); // print the basic info of employee
//   print("Name: ${emp.name}");
//   print("Leaves: ${emp.leaves}");
//   print("Final Salary: ₹${emp.calculateSalary()}");
//   print("Performance: ${emp.getPerformance(emp.leaves)}");
// }

// void main() {
//   // sort the list highest to lowest
//   // loop asmap and foreach
//   students.asMap().forEach((index, student) {
//     print(
//       "Rank ${index + 1}: ${student.name} | Total: ${student.getTotalMarks()}",
//     );
//   });
//   var payment1 = CreditCardPayment();
//   var payment2 = UpiPayment();
//   var payment3 = CashPayment();
//   processPayment(payment1, 1500);
//   processPayment(payment2, 2000);
//   processPayment(payment3, 500);
//   // created object and called method
//   var emp1 = FullTimeEmployee("E1", "Mirtha", 3, 80000);
//   var emp2 = ContractEmployee("E2", "John", 1, 500, 160);
//   var emp3 = Intern("E3", "Arun", 3, 30000);
//   // pass different employee types to the same function
//   // demonstrates polymorphism
//   printEmployee(emp1);
//   printEmployee(emp2);
//   printEmployee(emp3);
// }
