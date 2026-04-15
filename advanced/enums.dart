// basic enum 
//enum is a special type in Dart that allows you to define a set of named values. It is used to represent a fixed number of constant values, making your code more readable and maintainable. Enums are often used to represent states, options, or categories in a clear and organized way.
// Define an enum for different statuses
// Enums are defined using the 'enum' keyword followed by the name of the enum and a list of values enclosed in curly braces.
// Example is used to represent the status of an operation, such as success, failure, or pending. Each value in the enum is a constant that can be used throughout your code to improve readability and reduce errors.
enum Status {
  success,
  failure,
  pending,
}
// using enum in switch case
void checkStatus(Status status) {
  if (status case Status.success) {
    print("Operation was successful!");
  } else if (status case Status.failure) {
    print("Operation failed.");
  } else if (status case Status.pending) {
    print("Operation is pending.");
  }
}
void main() {
  Status currentStatus = Status.success;
  checkStatus(currentStatus);
} 