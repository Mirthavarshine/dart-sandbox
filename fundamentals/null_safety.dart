// null means no value or empty value .
void main(){
  String name = "Mirtha";
// name = null; //  not allowed in null safety
  print (name);
  // nullavle vs non-nullable types 
  String UserName = "Mirtha"; // non-nullable type
  String? NickName; // nullable type
  print(UserName);
  print(NickName);
  // null safety operators  
int? age;
print(age); // Output: null
// null acceration operator (!)
int? UserAge = 20;
print(UserAge!); // force not null Saying explicitly to dart it is not a null value if null it would throw an error
// null aware operator (??) // If age is null use this value insted 
int? Userage;
print(Userage ?? 0); 
// ?. operator // null aware access operator
String? PersonName; 
print(PersonName?.length);
}
