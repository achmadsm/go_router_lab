import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Detail screen displaying the received ID
class DetailScreen extends StatelessWidget {
  final String id;

  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail Page - ID: $id'), // Display the passed ID
            ElevatedButton(
              onPressed: () => context.pop(), // Navigate back to home
              child: Text('Back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
