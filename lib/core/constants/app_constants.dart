// Core constants for the Kratos app

class AppConstants {
  // App Info
  static const String appName = 'Kratos';
  static const String appTagline = 'Forge Your Strength';
  static const String appVersion = '1.0.0';
  
  // API & Backend
  static const String supabaseUrl = 'YOUR_SUPABASE_URL';
  static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
  
  // Storage Keys
  static const String keyIsFirstLaunch = 'is_first_launch';
  static const String keyThemeMode = 'theme_mode';
  static const String keyUserId = 'user_id';
  static const String keyUserToken = 'user_token';
  
  // Workout Constants
  static const int minRestTime = 30; // seconds
  static const int maxRestTime = 600; // seconds
  static const int defaultRestTime = 90; // seconds
  
  static const int minSets = 1;
  static const int maxSets = 10;
  static const int defaultSets = 3;
  
  static const int minReps = 1;
  static const int maxReps = 100;
  static const int defaultReps = 10;
  
  // Analytics Constants
  static const int daysInWeek = 7;
  static const int daysInMonth = 30;
  static const int daysInYear = 365;
  
  // Chart Constants
  static const int maxChartDataPoints = 30;
  static const int minChartDataPoints = 7;
  
  // Animation Durations (milliseconds)
  static const int shortAnimationDuration = 200;
  static const int mediumAnimationDuration = 300;
  static const int longAnimationDuration = 500;
}