
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class Divder1 extends StatelessWidget {
  const Divder1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            width: 110,
            height: 1,
            color: kcolors,
          ),  Text(
      " Or continue with ",
      style: TextStyle(fontSize: 18, color: Color(0xFF808080)),
    ),  Container(
            width: 110,
            height: 1,
            color: kcolors,
          ), 
        ],
      ),
    );
  }
}
