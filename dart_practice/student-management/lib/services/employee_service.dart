import '../models/employee.dart';

class EmployeeService {
  List<Employee> getEmployees() {
    return [
      FullTimeEmployee("E1", "Mirtha", 3, 80000),
      ContractEmployee("E2", "John", 1, 500, 160),
      Intern("E3", "Arun", 3, 30000),
    ];
  }

  void printEmployees(List<Employee> employees) {
    print("\n---- Employee Details ----");

    for (var emp in employees) {
      printEmployee(emp);
    }
  }
}