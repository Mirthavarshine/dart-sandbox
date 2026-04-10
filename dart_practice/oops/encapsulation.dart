class Student {
  int _id;                 
  String _name;            
  List<int> _marks;        

  // Constructor → used when creating object
  Student(this._id, this._name, this._marks);

  // Getter → read data // to control how the data is accessed and modified
  String get name => _name;

  // Setter → update data with control
  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  // Encapsulated logic
  int calculateTotal() {
    int total = 0;
    for (int mark in _marks) {
      total += mark;
    }
    return total;
  }

  void display() {
    print("ID: $_id, Name: $_name, Total: ${calculateTotal()}");
  }
}

void main() {
  Student s1 = Student(1, "Mirtha", [80, 90, 85]);

  s1.display();

  // Access using getter
  print(s1.name);

  // Update using setter
  s1.name = "Updated Mirtha";

  s1.display();
}