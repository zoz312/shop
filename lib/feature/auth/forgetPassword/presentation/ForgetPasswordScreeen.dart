import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/auth/forgetPassword/presentation/manger/cubit/forgetpassword_cubit.dart';

import '../../../../core/widgets/customBackIcon.dart';
import 'widgets/bodyForgetPassword.dart';

class Forgetpasswordscreeen extends StatelessWidget {
  const Forgetpasswordscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetpasswordCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Forget Password"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: Cutombackicon(),
        ),
        body: Bodyforgetpassword(),
      ),
    );
  }
}
