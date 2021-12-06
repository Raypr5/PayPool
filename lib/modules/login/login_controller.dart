import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:paypool/shared/auth/auth_controller.dart';
import 'package:paypool/shared/models/user_model.dart';

class LoginController{
  Future <void> googleSigIn(BuildContext context) async{
    final authController = AuthController();
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response= await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!, fotoUrl: response.photoUrl,);
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}