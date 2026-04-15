// with is used to create a new scope for variables, allowing you to reuse variable names without conflicts. It is often used in situations where you want to perform multiple operations on the same object or when you want to create a temporary variable for a specific block of code.
// The with statement is typically used in conjunction with classes that have a method called 'call'
// which allows you to treat instances of the class as if they were functions. This can be useful for creating fluent interfaces or for chaining method calls together in a more readable way.
// Example of using with statement in Dart
class Calculator {
  int value;
  Calculator(this.value);
  Calculator add(int num) {
    value += num;
    return this;
  } 
  Calculator subtract(int num) {
    value -= num;
    return this;
  }
  Calculator multiply(int num) {
    value *= num;
    return this;
  }
  Calculator divide(int num) {
    value ~/= num;
    return this;
  }
}
void main() {
  Calculator calc = Calculator(10);
  calc.add(5).subtract(3).multiply(2).divide(4);
  print("Final Value: ${calc.value}"); // Output: Final Value: 6
}
