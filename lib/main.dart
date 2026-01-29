import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/dashboard/dashboard_screen.dart';

void main() {
  // We removed the Firebase initialization for now to focus on Frontend
  runApp(const AuraApp());
}

class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AURA VHC',
      debugShowCheckedModeBanner: false,
      // Uses the centralized theme we will create in Step 2
      theme: AppTheme.lightTheme,
      home: const DashboardScreen(),
    );
  }
}
