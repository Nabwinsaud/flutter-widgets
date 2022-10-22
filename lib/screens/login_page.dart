import 'package:flutter/material.dart';
import 'package:google_docs/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Text('This is login page');
    return Scaffold(
        body: Center(
      child: ElevatedButton.icon(
        onPressed: () {},
        // icon: const Icon(Icons.verified),
        icon: Image.asset('assets/images/logo.png',
            fit: BoxFit.cover, height: 16),
        label: const Text(
          'sign in with google',
          style: TextStyle(color: kblackColor),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: whiteColor, minimumSize: const Size(150, 40)),
      ),
    ));
  }
}
