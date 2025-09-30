import 'package:flutter/material.dart';

/// High-contrast dark mode colors optimized for gym environment
class AppColors {
  // Primary Brand Colors
  static const Color primary = Color(0xFFFF6B35); // Energetic Orange-Red
  static const Color secondary = Color(0xFF00D9FF); // Electric Cyan
  
  // Background Colors
  static const Color background = Color(0xFF0A0E27); // Deep Dark Blue
  static const Color surface = Color(0xFF1A1F3A); // Lighter Dark Blue
  static const Color surfaceVariant = Color(0xFF252B47); // Card backgrounds
  
  // Text Colors (High Contrast)
  static const Color onPrimary = Color(0xFF000000);
  static const Color onSecondary = Color(0xFF000000);
  static const Color onBackground = Color(0xFFFFFFFF);
  static const Color onSurface = Color(0xFFE8E8E8);
  static const Color textSecondary = Color(0xFFB0B0B0);
  
  // Semantic Colors
  static const Color error = Color(0xFFFF5252);
  static const Color success = Color(0xFF00E676);
  static const Color warning = Color(0xFFFFAB00);
  static const Color info = Color(0xFF00B8D4);
  
  // On Semantic
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onSuccess = Color(0xFF000000);
  
  // Chart Colors (For Analytics)
  static const Color chartVolume = Color(0xFF2196F3);
  static const Color chartIntensity = Color(0xFFFF5722);
  static const Color chartFrequency = Color(0xFF4CAF50);
  static const Color chartPR = Color(0xFFFFC107);
  
  // Muscle Group Colors (For Heatmap)
  static const Color muscleChest = Color(0xFFE91E63);
  static const Color muscleBack = Color(0xFF9C27B0);
  static const Color muscleLegs = Color(0xFF3F51B5);
  static const Color muscleShoulders = Color(0xFF00BCD4);
  static const Color muscleArms = Color(0xFF4CAF50);
  static const Color muscleCore = Color(0xFFFF9800);
}