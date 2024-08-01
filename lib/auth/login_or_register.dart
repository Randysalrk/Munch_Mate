import 'package:flutter/material.dart';
import 'package:munch_mate/pages/login_page.dart';
import 'package:munch_mate/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially show login
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
        onTop: () {},
      );
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
