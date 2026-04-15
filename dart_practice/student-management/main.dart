import 'package:dart_practice/models/student.dart';
import 'package:dart_practice/models/employee.dart';
import 'package:dart_practice/services/payment.dart';

void main() {
  // -------- STUDENTS --------
  List<Student> students = [
    Student("Mirtha", 21, "Female", [80, 90, 85]),
    Student("John", 22, "Male", [70, 60, 75]),
    Student("Arun", 20, "Male", [95, 92, 90]),
  ];

  print("---- Student Ranking ----");
  for (int i = 0; i < students.length; i++) {
    var student = students[i];
    print(
      "Rank ${i + 1}: ${student.name} | Total: ${student.getTotalMarks()}",
    );
  }

  // -------- PAYMENTS --------
  print("\n---- Payments ----");

  processPayment(CreditCardPayment(), 1500);
  processPayment(UpiPayment(), 2000);
  processPayment(CashPayment(), 500);

  // -------- EMPLOYEES --------
  print("\n---- Employee Details ----");

  var emp1 = FullTimeEmployee("E1", "Mirtha", 3, 80000);
  var emp2 = ContractEmployee("E2", "John", 1, 500, 160);
  var emp3 = Intern("E3", "Arun", 3, 30000);

  printEmployee(emp1);
  printEmployee(emp2);
  printEmployee(emp3);
}