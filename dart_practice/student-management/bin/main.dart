
import '../lib/services/employee_service.dart' show EmployeeService;
import '../lib/services/payment.dart';
import '../lib/services/student_service.dart' show StudentService;

void main() {
  var studentService = StudentService();
  var students = studentService.getStudents();
  studentService.printStudents(students);

  processPayments();

  var employeeService = EmployeeService();
  var employees = employeeService.getEmployees();
  employeeService.printEmployees(employees);
}