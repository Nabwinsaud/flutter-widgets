import 'package:flutter/material.dart';
// import 'package:google_docs/screens/drawer_widget.dart';
import 'package:google_docs/screens/user_profile_drawer.dart';
// import './screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The google docs clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const LoginPage(),
        // home: const DrawerWidget());
        home: const UserProfileDrawer());
  }
}
