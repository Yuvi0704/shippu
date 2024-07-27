import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/profile_page.dart';
import 'package:myapp/models/profile_models.dart';

final Map<String, WidgetBuilder> routes = {
  '/profile': (context) => ProfilePage(userProfile: UserProfile(
    name: 'John Doe',
    email: 'john.doe@example.com',
    age: 25,
    interests: 'Flutter, Dart, Programming',
    qualifications: 'B.Sc in Computer Science',
  )), 
};
