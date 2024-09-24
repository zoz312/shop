import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/core/widgets/customBackIcon.dart';
import 'package:shop/feature/auth/SinUp/presentation/manger/cubit/sinup_cubit.dart';

import 'widget/bodySinUPScreen.dart';

class Sinupscreen extends StatelessWidget {
  const Sinupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SinupCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Cutombackicon(),
        ),
        body: Bodysinupscreen(),
      ),
    );
  }
}
