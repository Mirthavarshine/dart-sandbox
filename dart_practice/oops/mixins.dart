//Reusable behavior that can be added to multiple classes
// multiple behavioiur add on to a class without using inheritance
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

mixin PaymentFeature {
  void processPayment(double amount) {
    print("Processing payment: ₹$amount");
  }
}

class User {
  String name;
  User(this.name);
}

// Using multiple mixins
class Student extends User with Logger, PaymentFeature {
  Student(String name) : super(name);

  void performAction() {
    log("Student action started");        
    processPayment(500);                
  }
}

void main() {
  Student s = Student("Mirtha");
  s.performAction();
}