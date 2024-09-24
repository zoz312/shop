import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customrow extends StatelessWidget {
  const customrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: double.infinity,
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      
         Text("Don't have an account? ", style: TextStyle(fontSize: 18,color: Color(0xFF808080)),),
      InkWell(
        onTap: ()=>GoRouter.of(context).push('/s'),
        child: Text("Sin Up",style: TextStyle(fontSize: 18 ),))
    ],
      ),
    );
  }
}


