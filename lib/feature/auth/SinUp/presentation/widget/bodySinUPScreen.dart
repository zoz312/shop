
import 'package:flutter/material.dart';

import '../../../../../core/utils/logoimage.dart';
import 'SecvtionSinUp.dart';

class Bodysinupscreen extends StatelessWidget {
  const Bodysinupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      SizedBox(height: 40,),
    Logoimage(),
      SizedBox(height: 50,),
      Secntionsinup()
      
      ]
    );
  }
}