
import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class Logoimage extends StatelessWidget {
  const Logoimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120, child: Image.asset(Klogo));
  }
}

