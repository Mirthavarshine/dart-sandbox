void main() {
  List<int> marks = [80, 90, 85];

  marks.add(100);
  marks.remove(90);

  for (int mark in marks) {
    print(mark);
  }
// store 5 numbers print using loop 
  List<int> numbers = [10, 20, 30, 40, 50];

  for (int number in numbers) {
    print(number);
  }
  //Add two numbers remove one number and print final list 
  List<int> numList = [1, 2, 3, 4, 5];
  numList.add(6); // Add a number
  numList.remove(3); // Remove a number
  for (int num in numList) {
    print(num);
  } 
  //find the sum of all the elements in the list 
  List<int> values = [10, 20, 30, 40, 50];
  int sum = 0;
  for (int value in values) {
    sum = sum + value;
  }
  print('Sum: $sum');
  // find the largest number in the list 
  List<int> nums = [10, 20, 30, 40, 50];
  int largest = nums[0];
  for (int num in nums) {
    if (num > largest) {
      largest = num;  
    }
  }
  print('Largest: $largest');
// find the average of the list  it should be pass or fail
  List<int> scores = [80, 90, 85, 70, 95];
  int totalScore = 0;
  for (int score in scores) {
    totalScore += score;
  }
  double average = totalScore / scores.length;
  print('Average: $average');
  if (average >= 60) {
    print('Status: Pass');
  } else {
    print('Status: Fail');
  }

// set 
// remove duplicate values using set and print the unique values
  List<int> UserNumber = [1, 2, 3, 4, 5, 2, 3];
  Set<int> uniqueNumbers = UserNumber.toSet();
  print(uniqueNumbers); 

  //check element exits check rishi is exits found or not found 
Set<String> names = {"Rishi", "Mirtha", "John"};
String nameToCheck = "Rishi";
if (names.contains(nameToCheck)) {
  print('$nameToCheck is found'); 
} else {
  print('$nameToCheck is not found');
}
//find union of two sets 
Set<int> setA = {1, 2, 3};
Set<int> setB = {3, 4, 5};
Set<int> unionSet = setA.union(setB);
print('Union: $unionSet');
// find intersection of two sets and find common elements between two sets 
Set<int> a = {1, 2, 3, 4};
Set<int> b = {3, 4, 5};
Set<int> intersectionSet = a.intersection(b);
print('Intersection: $intersectionSet');
// find the unique word in a sentence convert to words remove dulicates using set and print the unique words 
String sentence = "Dart is fun and Dart is easy";
List<String> words = sentence.split(' ');
Set<String> uniqueWords = words.toSet();
print('Unique words: $uniqueWords');

//map  basic map creation
  Map<String, int> studentMarks = {
    'Alice': 85,
    'Bob': 90,
    'Charlie': 78,
  };
print(studentMarks);
// add and update the values 
studentMarks['David'] = 92; 
studentMarks['Alice'] = 88;
print(studentMarks);
// access the values
print('Alice\'s marks: ${studentMarks['Alice']}');
// remove a key-value pair
studentMarks.remove('Bob');
print(studentMarks);
// check if a key exists
String keyToCheck = 'Charlie';
if (studentMarks.containsKey(keyToCheck)) {
  print('$keyToCheck is found');
} else {
  print('$keyToCheck is not found');
  }
// counter frequency of elements 
List<String> fruits = ['apple', 'banana', 'apple', 'orange', 'banana'];
Map<String, int> frequency = {};
for (String fruit in fruits) {
  if (frequency.containsKey(fruit)) {
    frequency[fruit] = frequency[fruit]! + 1;
  } else {
    frequency[fruit] = 1;
  }
}
print('Frequency: $frequency');

// student result system 
// Where method 
List<int> number = [23,34,35,21,3,5,45,6,546,3465,67,11,34];
var filterNumber = number.where((num) => num > 30);
print(filterNumber);
// Built in method in collection 
// map 
List<int> Number = [1, 2, 3, 4, 5];
var doubledNumbers = Number.map((num) => num * 2);
print(doubledNumbers);
// Any 
List<int> valueScores = [40, 55, 80];
bool valued  = valueScores.any((s) => s >= 75); 
print(valued);
// every 
List<int> everyScores = [40, 55, 80];
bool everyValued = everyScores.every((s) => s >= 40);
print(everyValued);
// Firstwhere 
List<int> firstScores = [40, 55, 80];
int firstValued = firstScores.firstWhere((s) => s >= 50);
print(firstValued);
//lastwhere
List<int> lastScores = [40, 55, 80 ,50,45,60 ];
int lastValued = lastScores.lastWhere((s) => s >= 50);
print(lastValued);
//reduce and fold 
List<int> reduceScores = [40, 55, 80];
int redScore = reduceScores.reduce((a, b) => a + b);
print(redScore);
List<int> foldScores = [40, 55, 80];
int totalFoldScore = foldScores.fold(0, (a, b) => a + b);
print(totalFoldScore);

// set 
var setAA = {1, 2, 3};
var setBB = {3, 4, 5};

print(setAA.intersection(setBB)); 
print(setAA.union(setBB));  
print(setAA.difference(setBB));
print(setBB.add(  6));
print(setBB); 
print(setBB.remove(4));
print(setBB);
setBB.addAll({6, 3, 345, 234, 24324, 2423, 243242, 234234, 24234, 234324, 34545});
print(setBB);

}