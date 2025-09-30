// Common utility functions

import 'package:intl/intl.dart';

class DateTimeUtils {
  // Format date to readable string
  static String formatDate(DateTime date) {
    return DateFormat('MMM dd, yyyy').format(date);
  }
  
  // Format date and time
  static String formatDateTime(DateTime date) {
    return DateFormat('MMM dd, yyyy HH:mm').format(date);
  }
  
  // Format time only
  static String formatTime(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }
  
  // Get days between two dates
  static int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
  
  // Check if date is today
  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && 
           date.month == now.month && 
           date.day == now.day;
  }
  
  // Check if date is in current week
  static bool isThisWeek(DateTime date) {
    final now = DateTime.now();
    final weekStart = now.subtract(Duration(days: now.weekday - 1));
    final weekEnd = weekStart.add(const Duration(days: 7));
    return date.isAfter(weekStart) && date.isBefore(weekEnd);
  }
}

class FormatUtils {
  // Format weight with unit
  static String formatWeight(double weight, {String unit = 'kg'}) {
    return '${weight.toStringAsFixed(1)} $unit';
  }
  
  // Format duration in seconds to MM:SS
  static String formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
  
  // Format large numbers with K, M suffix
  static String formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
  
  // Format percentage
  static String formatPercentage(double value) {
    return '${value.toStringAsFixed(1)}%';
  }
}

class ValidationUtils {
  // Validate email
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  
  // Validate password (min 8 chars, 1 uppercase, 1 lowercase, 1 number)
  static bool isValidPassword(String password) {
    return password.length >= 8 &&
           RegExp(r'[A-Z]').hasMatch(password) &&
           RegExp(r'[a-z]').hasMatch(password) &&
           RegExp(r'[0-9]').hasMatch(password);
  }
  
  // Validate name (min 2 chars, only letters)
  static bool isValidName(String name) {
    return name.length >= 2 && RegExp(r'^[a-zA-Z\\s]+$').hasMatch(name);
  }
  
  // Validate weight value
  static bool isValidWeight(double weight) {
    return weight > 0 && weight <= 1000;
  }
  
  // Validate reps value
  static bool isValidReps(int reps) {
    return reps > 0 && reps <= 100;
  }
  
  // Validate sets value
  static bool isValidSets(int sets) {
    return sets > 0 && sets <= 10;
  }
  
}