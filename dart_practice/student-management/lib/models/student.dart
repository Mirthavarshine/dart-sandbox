class Student {
  String name;
  int age;
  String gender;
  List<int> marks;

  // Constructor
  Student(this.name, this.age, this.gender, this.marks);

  // Method to calculate total marks
  int getTotalMarks() {
    return marks.reduce((a, b) => a + b);
  }
}