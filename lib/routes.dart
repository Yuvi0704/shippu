import 'package:flutter/material.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/login_page.dart';
import 'presentation/pages/registration_page.dart';

class AppRoutes {
  static const String home = '/home';
  static const String login = '/';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case register:
        final args = settings.arguments as Map<String, dynamic>? ?? {};
        return MaterialPageRoute(
          builder: (_) => RegisterPage(
            username: args['username'] ?? '',
            email: args['email'] ?? '',
            password: args['password'] ?? '',
            confirmPassword: args['confirmPassword'] ?? '',
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
