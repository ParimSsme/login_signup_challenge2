import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isSignup = false;
  bool get isSignup => _isSignup;

  void setIsSignup(bool isSignup) {
    _isSignup = isSignup;
    notifyListeners();
  }

  Future<void> signIn(String email, String password) async {
    debugPrint("Signing in with $email");
    // TODO: call AuthService
  }

  Future<void> signUp(String name, String email, String password) async {
    debugPrint("Signing up with $name, $email");
    // TODO: call AuthService
  }
}
