import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_app/views/mainpage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for text fields
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController uniqueIdController = TextEditingController();

    return Scaffold(
      body: Container(
        color: const Color(0xFF61A417), // background color
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 260),
                // Email TextField with Icon
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    fillColor: Colors.purple[50],
                    filled: true,
                    prefixIcon: const Icon(Icons.email),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(height: 9),
                // Password TextField with Icon
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    fillColor: Colors.purple[50],
                    filled: true,
                    prefixIcon: const Icon(Icons.lock),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(height: 9),
                // Unique ID TextField with Icon
                TextField(
                  controller: uniqueIdController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Unique Id',
                    labelStyle: const TextStyle(
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    fillColor: Colors.purple[50],
                    filled: true,
                    prefixIcon: const Icon(Icons.key),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(height: 18),
                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Perform validation check
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty ||
                        uniqueIdController.text.isEmpty) {
                      // Show snackbar for empty fields
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill all details'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    } else if (emailController.text == '123' &&
                        passwordController.text == '123' &&
                        uniqueIdController.text == '456') {
                      // Navigate to the dashboard if all details are correct
                      Get.off(const MainPage());
                    } else {
                      // Show snackbar for incorrect details
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Incorrect details'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[50],
                    minimumSize: const Size(350, 50),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      fontFamily: "Mulish",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
