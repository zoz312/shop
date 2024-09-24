import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/core/utils/logoimage.dart';
import 'package:shop/core/widgets/CustomButton.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';

class Bodyadminview extends StatelessWidget {
  const Bodyadminview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminCubit()..getprouct(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logoimage(),
          CustomButton(
              text: "Add Product",
              onPressd: () {
                GoRouter.of(context).push('/ad');
              }),
          CustomButton(
              text: "View Orders",
              onPressd: () {
                GoRouter.of(context).push('/vi');
              }),
       
        ],
      ),
    );
  }
}
