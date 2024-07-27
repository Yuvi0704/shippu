import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/profile_page.dart';
import 'package:myapp/models/profile_models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(userProfile: UserProfile(
        name: 'John Doe',
        email: 'john.doe@example.com',
        age: 25,
        interests: 'Flutter, Dart, Programming',
        qualifications: 'B.Sc in Computer Science',
      )),
    );
  }
}