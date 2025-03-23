import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_lab/app_router.dart';

// Home screen with a button to navigate to detail screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home Screen'),
            ElevatedButton(
              onPressed: () => context.push(Routes.detail.replaceFirst(':id', '123')), // Navigate to detail with a dummy ID
              child: Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
