import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int id;
  String nom;
  String email;
  String phone;

  User({
    this.id=1,
    this.nom="",
    this.email="",
    this.phone=''
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"]?? -1,
    nom: json["Nom"]?? "",
    email: json["email"]?? "",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Nom": nom,
    "email": email,
    "phone": phone,
  };
}
