mixin Attendance {
  Performance getPerformance(int leaves) {
    if (leaves == 0) {
      return Performance.excellent;
    } else if (leaves <= 2) {
      return Performance.good;
    } else if (leaves == 3) {
      return Performance.average;
    } else {
      return Performance.bad;
    }
  }
}

enum Performance {
  excellent,
  good,
  average,
  bad,
}

abstract class Employee with Attendance {
  String id;
  String name;
  int leaves;

  Employee(this.id, this.name, this.leaves);

  double calculateSalary();
}

// Full Time Employee
class FullTimeEmployee extends Employee {
  double baseSalary;

  FullTimeEmployee(String id, String name, int leaves, this.baseSalary)
      : super(id, name, leaves);

  @override
  double calculateSalary() {
    double perDay = baseSalary / 30;
    double loss = perDay * leaves;
    double salary = baseSalary - loss;

    if (salary > 75000) {
      salary *= 0.9; // tax deduction
    }

    return salary;
  }
}

// Contract Employee
class ContractEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  ContractEmployee(
    String id,
    String name,
    int leaves,
    this.hourlyRate,
    this.hoursWorked,
  ) : super(id, name, leaves);

  @override
  double calculateSalary() {
    double salary = hourlyRate * hoursWorked;

    if (salary > 75000) {
      salary *= 0.9;
    }

    return salary;
  }
}

// Intern
class Intern extends Employee {
  double stipend;

  Intern(String id, String name, int leaves, this.stipend)
      : super(id, name, leaves);

  @override
  double calculateSalary() {
    int extraLeaves = leaves > 2 ? leaves - 2 : 0;
    double perDay = stipend / 30;

    return stipend - (extraLeaves * perDay);
  }
}

// Common print function
void printEmployee(Employee emp) {
  print("Employee ID: ${emp.id}");
  print("Name: ${emp.name}");
  print("Leaves: ${emp.leaves}");
  print("Final Salary: ₹${emp.calculateSalary()}");
  print("Performance: ${emp.getPerformance(emp.leaves)}");
  print("-----------------------------");
}