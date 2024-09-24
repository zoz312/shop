import 'package:flutter/material.dart';

class textFormFiledProduct extends StatelessWidget {
  const textFormFiledProduct({
    super.key,
    required this.onSaved, required this.name,
  });
  final void Function(String?)? onSaved;
 final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        onChanged: onSaved,
        validator: (value) {
         if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
        },
        decoration: InputDecoration(
          filled: true,
          enabled: true,
          fillColor: Color(0xFF232321),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              //  color: kcolors,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                //  color: kcolors,
                width: 1,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                //   color: kcolors,
                width: 1,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              )),
          //  suffixIcon: Icon(Icons.remove_red_eye),
          prefixIcon: Icon(Icons.remove_red_eye_outlined),
          labelText: name,
        ),
      ),
    );
  }
}
