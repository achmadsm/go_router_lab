import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_lab/app_router.dart';

// Simple login screen with a button to navigate to home
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Screen'),
            ElevatedButton(
              onPressed: () => context.go(Routes.home), // Simulate login
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
