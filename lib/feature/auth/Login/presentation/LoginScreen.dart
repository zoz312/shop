import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/auth/Login/presentation/manger/cubit/login_cubit.dart';
import 'package:shop/feature/auth/Login/presentation/widgets/BodyLoginScreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(child: Bodyloginscreen()),
      ),
    );
  }
}
