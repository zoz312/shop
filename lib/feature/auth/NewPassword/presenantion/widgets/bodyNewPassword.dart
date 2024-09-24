
import 'package:flutter/material.dart';
import 'package:shop/core/vaildatlorpassword.dart';

import '../../../../../core/widgets/CustomButton.dart';
import '../../../../../core/widgets/textFormFiledPassword.dart';

class Bodynewpassword extends StatelessWidget {
  const Bodynewpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(32), topEnd: Radius.circular(2)),
                color: Colors.black),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Create New Password ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Text(
                    "Create a new password, please don’t forget this one too.",
                    style: TextStyle(fontSize: 18, color: Color(0xFFF3FED3)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextformFiledPassword(validator: (value) {
                  vaildpassword(value);
                }, text: "password ",onch: (p0) {
                  
                },),
                 SizedBox(
                  height: 10,
                ),
                TextformFiledPassword(validator: (value) {
                  vaildpassword(value);
                },text: " Confirm Password",onch:(p0) {
                  
                } ,),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Create New Password',
                  onPressd: () {
                
                  },
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );;
  }
}