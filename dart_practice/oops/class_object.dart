// class
class User {
  int id;
  String name;

  User(this.id, this.name);
}
// object
void main() {
  User user1 = User(1, "Rohini");
  User user2 = User(2, "Mirtha");

  print("User 1: ID=${user1.id}, Name=${user1.name}");
  print("User 2: ID=${user2.id}, Name=${user2.name}");
}