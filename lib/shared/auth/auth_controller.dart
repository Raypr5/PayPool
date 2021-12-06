
import 'package:flutter/material.dart';
import 'package:paypool/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  UserModel? user1;
  UserModel get user => user1!;

  void setUser(BuildContext context, UserModel? user){
    if(user != null){
      user1 = user;
      Navigator.pushReplacementNamed(
          context, "/home");
    } else{
      Navigator.pushReplacementNamed(
          context, "/login");
    }
  }

  Future <void> Saveuser(UserModel user) async{
    final instance = await SharedPreferences.getInstance();
    instance.setString("user", user.toJson());
    return;
  }

  Future <void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(Duration(seconds: 1));
    if(instance.containsKey("user")){
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    } else{
      setUser(context, null);
    }
  }

}
