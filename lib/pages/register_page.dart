import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  //LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            // Message, app slogan
            Text(
              "Munch_Mate",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Register Now!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),
            // Email text field
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            // Password text field
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            //confirm Password text field
            MyTextField(
              controller: confirmpasswordController,
              hintText: "Re-Type Password",
              obscureText: true,
            ),

            const SizedBox(height: 25),
            // Sign up button
            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),
            const SizedBox(height: 25),
            // already have an acc?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    // Navigate to the registration page
                  },
                  child: Text(
                    "Login now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
