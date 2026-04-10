// extension → add new functionality to existing classes without modifying them
// allows us to add methods to existing classes without changing their source code
// useful when we want to add functionality to classes from external libraries or built-in classes
// in dart, we can create extensions using the 'extension' keyword
extension StringExtensions on String {
  // Add a method to reverse a string
  String reverse() {
    return split('').reversed.join();
  }

  // Add a method to check if the string is a palindrome
  bool isPalindrome() {
    String cleaned = replaceAll(RegExp(r'[\W_]+'), '').toLowerCase();
    return cleaned == cleaned.split('').reversed.join();
  }
}
void main() {
  String str = "Hello, Dart!";
  print(str.reverse()); 

  String palindrome = "A man, a plan, a canal, Panama";
  print(palindrome.isPalindrome());
}