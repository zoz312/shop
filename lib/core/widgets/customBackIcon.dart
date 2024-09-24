import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cutombackicon extends StatelessWidget {
  const Cutombackicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white)),
        child: Center(
            child: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 18),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        )),
      ),
    );
  }
}
