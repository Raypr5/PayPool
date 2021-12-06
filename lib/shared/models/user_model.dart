
import 'dart:convert';

class UserModel {

  final String name;
  final String? fotoUrl;

  UserModel({required this.name, required this.fotoUrl});

  factory UserModel.fromMap(Map<String, dynamic> map){
    return UserModel(name: map['name'], fotoUrl: map['fotoUrl']);
  }
  factory UserModel.fromJson(String json) =>
      UserModel.fromMap(jsonDecode(json));

    Map<String, dynamic> toMap() =>{
          "name": name,
          "fotoUrl": fotoUrl,
        };

    String toJson() => jsonEncode(toMap());

}




