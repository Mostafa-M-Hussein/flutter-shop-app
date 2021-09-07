import 'package:flutter_shop/authentication/authenticatable.dart';
import 'package:flutter_shop/user/user.dart';

class FirebaseAuthenticationController implements authenticatable {
  @override
  Future<bool> login(String userName, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<bool> resetPassword(String email) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<User> updateProfile(User user) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
}
