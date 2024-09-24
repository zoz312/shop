import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/utils/logoimage.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';
import 'package:shop/feature/admin/view/widget/BodyViewProduct.dart';

class ViewproductScreen extends StatelessWidget {
  const ViewproductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdminCubit()..getprouct(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Logoimage(),
          ),
        ),
        body: Bodyviewproduct(),
      ),
    );
  }
}
