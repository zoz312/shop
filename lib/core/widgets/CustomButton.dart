
import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text, required this.onPressd,
  });
  final String text;
 final void Function() onPressd;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 56,
      child: FilledButton(
        onPressed: onPressd,
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(kcolorbutton),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        ),
      ),
    );
  }
}
