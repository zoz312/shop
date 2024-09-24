import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:shop/core/vaildatlorpassword.dart';
import 'package:shop/core/widgets/CustomButton.dart';
import 'package:shop/core/widgets/textFormFiledPassword.dart';
import 'package:shop/core/widgets/textFormFiledPhone.dart';
import 'package:shop/feature/auth/SinUp/presentation/manger/cubit/sinup_cubit.dart';
import 'package:shop/feature/auth/SinUp/presentation/widget/divdir.dart';

import 'CustomRowgoogleiphone.dart';
import 'customrowforget.dart';

class Secntionsinup extends StatelessWidget {
  Secntionsinup({super.key});
  String? email;

  String? password1;
  String? password2;
  GlobalKey<FormState> fromkey = GlobalKey();
  bool lo = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SinupCubit, SinupState>(
      listener: (context, state) {
        if (state is Sinupleoded) {
          GoRouter.of(context).push("/vi");
          lo = false;
        } else if (state is Sinupfeilure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error.toString())));
        } else { 
          lo = true;
        }
      },
      builder: (context, state) {
        return Form(
          key: fromkey,
          child: Container(
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
                  "Get Started",
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
                    password1 = p0;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextformFiledPassword(
                  validator: (value) {
                    if (value == password1) {
                      return null;
                    } else {
                      return 'not matching';
                    }
                  },
                  text: 'Confirm Password',
                  onch: (p0) {
                    password2 = p0;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(
                  text: 'Sin Up',
                  onPressd: () {
                    if (fromkey.currentState!.validate()) {
                      BlocProvider.of<SinupCubit>(context)
                          .sinup(email: email!, password: password2!);
                    } else {}
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Divder1(),
                CustomRowgoogleiphone(),
                SizedBox(
                  height: 10,
                ),
                name(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
