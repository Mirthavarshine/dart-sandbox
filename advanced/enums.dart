// basic enum 
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