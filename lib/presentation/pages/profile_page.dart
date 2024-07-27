// lib/presentation/pages/profile_page.dart

import 'package:flutter/material.dart';
import 'package:myapp/models/profile_models.dart';

class ProfilePage extends StatefulWidget {
  final UserProfile userProfile;

  ProfilePage({required this.userProfile});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _ageController;
  late TextEditingController _interestsController;
  late TextEditingController _qualificationsController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.userProfile.name);
    _emailController = TextEditingController(text: widget.userProfile.email);
    _ageController = TextEditingController(text: widget.userProfile.age.toString());
    _interestsController = TextEditingController(text: widget.userProfile.interests);
    _qualificationsController = TextEditingController(text: widget.userProfile.qualifications);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    _interestsController.dispose();
    _qualificationsController.dispose();
    super.dispose();
  }

  void _updateProfile() {
    setState(() {
      widget.userProfile.name = _nameController.text;
      widget.userProfile.email = _emailController.text;
      widget.userProfile.age = int.parse(_ageController.text);
      widget.userProfile.interests = _interestsController.text;
      widget.userProfile.qualifications = _qualificationsController.text;
    });
    // Here you can add logic to save the updated profile data
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile_placeholder.png'), // Replace with the user's profile image
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _interestsController,
                decoration: InputDecoration(
                  labelText: 'Interests',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _qualificationsController,
                decoration: InputDecoration(
                  labelText: 'Qualifications',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _updateProfile,
                child: Text('Update Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
