import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: double.infinity,
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
        
      InkWell(
        onTap: ()=>GoRouter.of(context).push('/f'),
        child: Text("Forget Password ?",style: TextStyle(fontSize: 18 ),))
    ],
      ),
    );;
  }
}