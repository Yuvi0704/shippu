// lib/models/profile_model.dart

class UserProfile {
  String name;
  String email;
  int age;
  String interests;
  String qualifications;

  UserProfile({
    required this.name,
    required this.email,
    required this.age,
    required this.interests,
    required this.qualifications,
  });

  // Convert a UserProfile object to a Map object
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'interests': interests,
      'qualifications': qualifications,
    };
  }

  // Convert a Map object to a UserProfile object
  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      name: map['name'],
      email: map['email'],
      age: map['age'],
      interests: map['interests'],
      qualifications: map['qualifications'],
    );
  }
}
