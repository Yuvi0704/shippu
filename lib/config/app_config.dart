// lib/config/app_config.dart

class AppConfig {
  static const String appName = 'AI Tutorials Platform';
  static const String apiBaseUrl = 'https://api.example.com/';
  static const bool isDebugMode = true;

  // Firebase Configuration
  static const String firebaseApiKey = 'YOUR_FIREBASE_API_KEY';
  static const String firebaseAuthDomain = 'YOUR_FIREBASE_AUTH_DOMAIN';
  static const String firebaseDatabaseUrl = 'YOUR_FIREBASE_DATABASE_URL';
  static const String firebaseProjectId = 'YOUR_FIREBASE_PROJECT_ID';
  static const String firebaseStorageBucket = 'YOUR_FIREBASE_STORAGE_BUCKET';
  static const String firebaseMessagingSenderId = 'YOUR_FIREBASE_MESSAGING_SENDER_ID';
  static const String firebaseAppId = 'YOUR_FIREBASE_APP_ID';
  static const String firebaseMeasurementId = 'YOUR_FIREBASE_MEASUREMENT_ID';

  // Any other configuration variables
  static const int timeoutDuration = 5000; // in milliseconds

  // UI related configurations
  static const String logoPath = 'assets/images/logo.png';
}
