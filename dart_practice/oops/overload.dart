// Not support in dart but used as named and parameterized constructor

//Allows the Education module to fetch a list of videos with or without filters using one function.

class Payment {
  // We use [square brackets] for optional positional parameters
  // OR {curly braces} for named parameters.
  void processPayment(double amount, {String? couponCode}) {
    if (couponCode != null) {
      print("Processing ₹$amount with coupon: $couponCode");
    } else {
      print("Processing ₹$amount without coupon.");
    }
  }
}

void main() {
  Payment p = Payment();
  p.processPayment(500); // Case 1: Simple
  p.processPayment(500, couponCode: "ARCHER10"); // Case 2: "Overloaded" with extra info
}