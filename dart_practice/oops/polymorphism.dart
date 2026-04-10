// same method different implementation 
abstract class Payment {
  void pay(double amount);
}

class UpiPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using UPI");
  }
}

class CardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Card");
  }
}

void main() {
  Payment payment1 = UpiPayment();
  payment1.pay(1000);

  Payment payment2 = CardPayment();
  payment2.pay(500);
}