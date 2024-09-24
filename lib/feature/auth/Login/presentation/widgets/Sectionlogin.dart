import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/core/vaildatlorpassword.dart';
import 'package:shop/core/widgets/CustomButton.dart';
import 'package:shop/core/widgets/textFormFiledPassword.dart';
import 'package:shop/core/widgets/textFormFiledPhone.dart';
import 'package:shop/feature/auth/Login/presentation/manger/cubit/login_cubit.dart';
import 'package:shop/feature/auth/Login/presentation/widgets/customrow.dart';

class Sectionlogin extends StatelessWidget {
  Sectionlogin({super.key});
  String? email;

  String? password;

  GlobalKey<FormState> fromkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Loginloaded) {
          GoRouter.of(context).push("/vi");
        } 
         if (state is Loginloadedadmin) {
          GoRouter.of(context).push("/a");
        } 
        else if (state is Loginfailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error.toString())));
        } else {
          print('object');
        }
      },
      child: Form(
        key: fromkey,
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
                "Welcome Back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Text(
                "Enter your details below",
                style: TextStyle(fontSize: 18, color: Color(0xFF808080)),
              ),
              SizedBox(
                height: 20,
              ),
              textFormFiledPhone(
                onChanged: (p0) {
                  email = p0;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextformFiledPassword(
                validator: (value) {
                  vaildpassword(value);
                },
                text: 'Password',
                onch: (p0) {
                  password = p0;
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                text: 'Log in',
                onPressd: () {
                  if (fromkey.currentState!.validate()) {
                    BlocProvider.of<LoginCubit>(context)
                        .loginuser(email: email!, password: password!);
                  } else {}
                },
              ),
              SizedBox(
                height: 40,
              ),
              customrow(),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
