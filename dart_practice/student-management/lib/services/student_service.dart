import '../models/student.dart';

class StudentService {
  List<Student> getStudents() {
    return [
      Student("Mirtha", 21, "Female", [80, 90, 85]),
      Student("John", 22, "Male", [70, 60, 75]),
      Student("Arun", 20, "Male", [95, 92, 90]),
    ];
  }

  void printStudents(List<Student> students) {
    print("---- Student Ranking ----");

    for (int i = 0; i < students.length; i++) {
      var student = students[i];
      print(
        "Rank ${i + 1}: ${student.name} | Total: ${student.getTotalMarks()}",
      );
    }
  }
}