
import 'package:flutter/material.dart';
import 'package:shop/core/widgets/customBackIcon.dart';

import 'widgets/bodyOTPScreen.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Forget Password"),
          leading: Cutombackicon(),
        ),
        body: Bodyotpscreen(),
      ),
    );
  }
}