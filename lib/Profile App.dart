import 'package:flutter/material.dart';
import 'Profile Page.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}