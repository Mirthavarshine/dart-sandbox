// Generic class
class Box<T> {
  T content;
  Box(this.content);
}
void main() {
  // Create a Box for integers
  Box<int> intBox = Box(123);
  print(intBox.content); 

  // Create a Box for strings
  Box<String> strBox = Box("Hello");
  print(strBox.content); 

  // Create a Box for lists of doubles
  Box<List<double>> listBox = Box([1.1, 2.2, 3.3]);
  print(listBox.content); 
}