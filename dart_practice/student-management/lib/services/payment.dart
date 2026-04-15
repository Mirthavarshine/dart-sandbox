abstract class Payment {
  void pay(double amount);
}

class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) return print("Invalid amount");
    print("Paid ₹$amount using Credit Card (XXXX-5678)");
  }
}

class UpiPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) return print("Invalid amount");
    print("Paid ₹$amount using UPI (TXN123ABC)");
  }
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    if (amount <= 0) return print("Invalid amount");
    print("Paid ₹$amount using Cash");
  }
}

// Service-style function
void processPayments() {
  print("\n---- Payments ----");

  List<Payment> payments = [
    CreditCardPayment(),
    UpiPayment(),
    CashPayment(),
  ];

  List<double> amounts = [1500, 2000, 500];

  for (int i = 0; i < payments.length; i++) {
    payments[i].pay(amounts[i]);
  }
}