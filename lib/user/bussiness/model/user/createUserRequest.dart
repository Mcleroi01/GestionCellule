
class CreateUserRequest{
  String name;
  String email;
  String password;
  String phone;
  String confirmed;


  CreateUserRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmed,
    this.phone=''
});

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
    "confirmed": confirmed,
    "telephone": phone
  };
}