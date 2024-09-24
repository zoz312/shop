
import 'package:flutter/material.dart';
import 'package:shop/core/widgets/customBackIcon.dart';

import 'widgets/bodyNewPassword.dart';

class Newpasswodscreen extends StatelessWidget {
  const Newpasswodscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest your Password",style: TextStyle(fontWeight: FontWeight.w700),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:Cutombackicon() ,
        
    
      ),
body: Bodynewpassword(),
    );
  }
}