import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpViewModel {
  void checkAndRegister(String email, String password) {
    if (email.contains('@mail.com') && password.length >= 12) {
      // Perform registration
    } else {
      // Show error message
    }
  }

  void loginWithGoogle() async {
    final googleUrl = 'https://accounts.google.com';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      // Show error message
    }
  }

  void loginWithFacebook() async {
    final facebookUrl = 'https://www.facebook.com';
    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      // Show error message
    }
  }
}