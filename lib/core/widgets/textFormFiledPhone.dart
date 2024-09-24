
import 'package:flutter/material.dart';

class textFormFiledPhone extends StatelessWidget {
  const textFormFiledPhone({
    super.key, required this.onChanged,
  });
final void Function(String) onChanged ;
  @override
  Widget build(BuildContext context) {
    return Container(
      
     padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        onChanged: onChanged ,
         validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  // RegEx pattern for validating email
                  String pattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null; // Return null if the email is valid
                },
       
       decoration: InputDecoration(
         filled: true,
         enabled: true,
         fillColor: Color(0xFF232321),
      enabledBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(
           //  color: kcolors,
             width: 1,
           ),),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(
           //  color: kcolors,
             width: 1,
           )
         ),
       focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(
          //   color: kcolors,
             width: 1,
           )
         ),errorBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(16),
           borderSide: BorderSide(
             color: Colors.red,
             width: 1,
           )
         ),
       //  suffixIcon: Icon(Icons.remove_red_eye),
         prefixIcon:  Icon(Icons.remove_red_eye_outlined),
         labelText: 'email'
       ),
      
      ),
    );
  }
}
