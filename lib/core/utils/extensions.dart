// Useful extensions for common types

import 'package:flutter/material.dart';

extension StringExtensions on String {
  // Capitalize first letter
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
  
  // Check if string is email
  bool get isEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}
$').hasMatch(this);
  }
  
  // Check if string is numeric
  bool get isNumeric {
    return double.tryParse(this) != null;
  }
}

extension DateTimeExtensions on DateTime {
  // Check if date is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }
  
  // Check if date is yesterday
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return year == yesterday.year && 
           month == yesterday.month && 
           day == yesterday.day;
  }
  
  // Get time ago string
  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);
    
    if (difference.inDays > 7) {
      return '${difference.inDays ~/ 7}w ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'just now';
    }
  }
}

extension ContextExtensions on BuildContext {
  // Quick access to theme
  ThemeData get theme => Theme.of(this);
  
  // Quick access to text theme
  TextTheme get textTheme => Theme.of(this).textTheme;
  
  // Quick access to color scheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  
  // Quick access to media query
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  
  // Quick access to screen size
  Size get screenSize => MediaQuery.of(this).size;
  
  // Show snackbar
  void showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? colorScheme.error : null,
      ),
    );
  }
}