//A child class providing a specific implementation of a method that is already defined in its parent class.
// support the dart 
//Allows the Admin and ArcherUser to react differently to the same command (like login()).
class User {
  void permissions() {
    print("Standard User: Can view dashboard.");
  }
}

class Admin extends User {
  @override // Tells Dart we are intentionally changing the parent's behavior
  void permissions() {
    print("Admin: Can edit courses and delete users.");
  }
}

void main() {
  User user = Admin(); 
  user.permissions(); // Output: Admin permissions (Connectivity: the app treats them as a 'User' but the 'Admin' logic runs)
}