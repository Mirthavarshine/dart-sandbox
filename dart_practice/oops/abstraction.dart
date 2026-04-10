// show what to do and hide data from user
// abstraction is about hiding complexity and showing only essential features to the user
// it focuses on what an object does rather than how it does it
// it allows us to create a simple interface for complex systems
// in dart, we can achieve abstraction using abstract classes and interfaces

abstract class Payment {
  void pay(double amount);
}

class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Credit Card");
  }
}

class UpiPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using UPI");
  }
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Cash");
  }
}
void main() {
  Payment payment1 = CreditCardPayment();
  payment1.pay(1000);

  Payment payment2 = UpiPayment();
  payment2.pay(500);

  Payment payment3 = CashPayment();
  payment3.pay(200);
}

// In archer platform connection 
// User module - choose payment method ,
// admin module - Track the payment , 
// education module - Paid course 
// ( abstraction ensure all modules are same interface but impletementation differ)