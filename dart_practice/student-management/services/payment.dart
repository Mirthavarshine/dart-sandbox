abstract class Payment {
  void pay(double amount);
}

// Credit Card
class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) {
      print("Invalid amount");
      return;
    }
    print("Paid ₹$amount using Credit Card (XXXX-5678)");
  }
}

// UPI
class UpiPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) {
      print("Invalid amount");
      return;
    }
    print("Paid ₹$amount using UPI (TXN123ABC)");
  }
}

// Cash
class CashPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) {
      print("Invalid amount");
      return;
    }
    print("Paid ₹$amount using Cash");
  }
}

// Common function
void processPayment(Payment payment, double amount) {
  payment.pay(amount);
}