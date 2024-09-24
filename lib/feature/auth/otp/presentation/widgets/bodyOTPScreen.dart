
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/widgets/CustomButton.dart';

class Bodyotpscreen extends StatelessWidget {
  const Bodyotpscreen({super.key});

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
                  "Verification Code",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Text(
                    "You need to enter 4-digit code we send to your Phone number.",
                    style: TextStyle(fontSize: 18, color: kcolors),
                  ),
                ),

                
                SizedBox(
                  height: 20,
                ),
                pincoderextfield(),
              SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Confirm',
                  onPressd: () {
                    GoRouter.of(context).push('/n');
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

class pincoderextfield extends StatelessWidget {
  const pincoderextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
    mainAxisAlignment: MainAxisAlignment.center,
    appContext: context,
    pastedTextStyle: TextStyle(
      color: kcolors,
      fontWeight: FontWeight.bold,
    ),
    length: 4,
    obscureText: true,
    obscuringCharacter: '*',
                   
    
                  
                   
                 
    pinTheme: PinTheme(
      inactiveColor:Theme.of(context).cardColor,
      fieldOuterPadding: EdgeInsets.all(7),
      selectedColor:Theme.of(context).cardColor,
      activeColor:Theme.of(context).cardColor,
      errorBorderColor:Colors.red,
      selectedFillColor:kcolors,
     inactiveFillColor:kcolors,
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(24),
      fieldHeight: 80,
      fieldWidth: 80,
      activeFillColor: kcolors,
    ),
    cursorColor: Colors.black,
    animationDuration: const Duration(milliseconds: 300),
    enableActiveFill: true,
                  
    keyboardType:TextInputType.number,
    boxShadows: const [
      BoxShadow(
        offset: Offset(0, 1),
        color: Colors.black12,
        blurRadius: 10,
      )
    ],
                   
                  
                  
                  );
  }
}