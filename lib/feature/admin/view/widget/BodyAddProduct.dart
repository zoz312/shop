import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/utils/logoimage.dart';
import 'package:shop/core/widgets/CustomButton.dart';
import 'package:shop/core/widgets/textformfiledproduct.dart';
import 'package:shop/feature/admin/data/fireStore.dart';
import 'package:shop/feature/admin/data/product.dart';
import 'package:shop/feature/admin/view/manger/cubit/admin_cubit.dart';

class Bodyaddproduct extends StatelessWidget {
  Bodyaddproduct({super.key});
  String? name, desc, price, cat, loc;
  GlobalKey<FormState> globalKey = GlobalKey();
  Store store = Store();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          Logoimage(),
          SizedBox(
            height: 70,
          ),
          textFormFiledProduct(
              onSaved: (p0) {
                name = p0;
              },
              name: 'Product Name'),
          SizedBox(
            height: 20,
          ),
          textFormFiledProduct(
              onSaved: (p0) {
                price = p0;
              },
              name: 'Product price'),
          SizedBox(
            height: 20,
          ),
          textFormFiledProduct(
              onSaved: (p0) {
                desc = p0;
              },
              name: 'Product decription'),
          SizedBox(
            height: 20,
          ),
          textFormFiledProduct(
              onSaved: (p0) {
                cat = p0;
              },
              name: 'Product catagory'),
          SizedBox(
            height: 20,
          ),
          textFormFiledProduct(
              onSaved: (p0) {
                loc = p0;
              },
              name: 'Product location'),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'Done',
              onPressd: () {
                if (globalKey.currentState!.validate()) {
                  BlocProvider.of<AdminCubit>(context).Addproduct(
                    product:    Product(
                          name,
                          cat,
                          desc,
                           loc,
                          price,
                          ));
                }
              })
        ],
      ),
    );
  }
}
