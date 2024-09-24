import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/feature/auth/forgetPassword/presentation/manger/cubit/forgetpassword_cubit.dart';

import '../../../../../core/widgets/CustomButton.dart';
import '../../../../../core/widgets/textFormFiledPhone.dart';

class Bodyforgetpassword extends StatelessWidget {
  Bodyforgetpassword({super.key});
  String? email;
 GlobalKey<FormState> fromkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetpasswordCubit, ForgetpasswordState>(
      listener: (context, state) {
        if (state is Forgetpasswordloaded) {
          GoRouter.of(context).push('/h');
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('GOOD')));
        } else if (state is Forgetpasswordfailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error.toString())));
        } else {
          print('object');
        }
      },
      child: Form(
        key: fromkey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(32),
                        topEnd: Radius.circular(2)),
                    color: Colors.black),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Reset your Password",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      child: Text(
                        "We need your Phone number so we can send you the password reset code.",
                        style: TextStyle(fontSize: 18, color: Color(0xFFF3FED3)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    textFormFiledPhone(
                      onChanged: (p0) {
                        email = p0;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      text: 'Create New Password',
                      onPressd: () {
                        if (fromkey.currentState!.validate()) {
                          
                        
                        BlocProvider.of<ForgetpasswordCubit>(context)
                            .resetpassword(email: email!);
                      }else{}},
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
