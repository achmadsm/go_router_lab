import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_lab/app_router.dart';

// Splash screen that decides navigation based on login status
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Dummy login state, replace with actual authentication logic
  final bool _isLogin = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;

      if (_isLogin) {
        context.go(Routes.home); // Navigate to home if logged in
      } else {
        context.go(Routes.login); // Navigate to login if not logged in
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Splash Screen')));
  }
}
