
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/core/utils/logoimage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        GoRouter.of(context).push('/h');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Logoimage(),
      ),
    );
  }
}


