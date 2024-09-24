import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/admin/data/product.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';
import 'package:shop/feature/admin/view/widget/productietm.dart';

class Bodyviewproduct extends StatelessWidget {
  Bodyviewproduct({super.key});
  List<Product> model = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminCubit, AdminState>(
      listener: (BuildContext context, AdminState state) {
        if (state is AdminLoaded) {
          model = state.product;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: model.length,
              itemBuilder: (context, index) => Productietm(
                    product: model[index],
                  )),
        );
      },
    );
  }
}
