
import 'package:flutter/material.dart';

import '../../../../../core/utils/logoimage.dart';
import 'Sectionlogin.dart';

class Bodyloginscreen extends StatelessWidget {
  const Bodyloginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
    //  crossAxisAlignment: CrossAxisAlignment.center,
       //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(height: 40,),
    Logoimage(),
      SizedBox(height: 150,),
    Sectionlogin()
    
    ],
    
    );
  }
}
