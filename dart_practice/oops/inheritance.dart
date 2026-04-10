// class User {
//   int id;
//   String name;
//   String department;

//   // Constructor (Parent)
//   User(this.id, this.name, this.department  );
// }

// class Student extends User {
//   List<int> marks;

//   // Constructor (Child)
//   Student(int id, String name, String department, this.marks) : super(id, name, department);

//   // Method to calculate total marks
//   int calculateTotal() {
//     int total = 0;
//     for (int mark in marks) {
//       total += mark;
//     }
//     return total;
//   }

//   void display() {
//     print("ID: $id, Name: $name, Total Marks: ${calculateTotal()}");
//   }
// }

// void main() {
//   // Object creation → constructor runs here
//   Student student1 = Student(1, "Mirtha", "Computer Science", [80, 90, 85]);
//   Student student2 = Student(2, "Alice", "Mathematics", [75, 85, 90]);


//   // Calling method
//   student1.display();
//   student2.display();
// }

// single inhertances 
class User {
  int id;
  String name;

  User(this.id, this.name);
}

class Student extends User {
  Student(int id, String name) : super(id, name);
}

// multilevel inheritance
class Employee extends User {
  String department;  
  Employee(int id, String name, this.department) : super(id, name);
}
// hierarchical inheritance
class Teacher extends User {
  String subject;
  Teacher(int id, String name, this.subject) : super(id, name);
}
void main() {
  Student student = Student(1, "Mirtha");
  print("Student ID: ${student.id}, Name: ${student.name}");

  Employee employee = Employee(2, "Alice", "HR");
  print("Employee ID: ${employee.id}, Name: ${employee.name}, Department: ${employee.department}");

  Teacher teacher = Teacher(3, "John", "Mathematics");
  print("Teacher ID: ${teacher.id}, Name: ${teacher.name}, Subject: ${teacher.subject}");
}
