import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Courses'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CourseCard(courseName: 'React', onTap: () => navigateToCourse(context, 'React')),
              CourseCard(courseName: 'Java', onTap: () => navigateToCourse(context, 'Java')),
              CourseCard(courseName: 'JavaScript', onTap: () => navigateToCourse(context, 'JavaScript')),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToCourse(BuildContext context, String courseName) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CoursePage(courseName: courseName)),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String courseName;
  final VoidCallback onTap;

  CourseCard({required this.courseName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        title: Text(
          courseName,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}

class CoursePage extends StatelessWidget {
  final String courseName;

  CoursePage({required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
      ),
      body: Center(
        child: Text(
          'Welcome to the $courseName course!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
