import 'package:flutter/material.dart';
import 'package:shop/feature/admin/data/product.dart';

class Productietm extends StatelessWidget {
  const Productietm({super.key, required this.product});
 final Product product;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(8.0), // إضافة زوايا مستديرة
      child: Container(
        height: 130,
        width: 120,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8.0), // نفس زوايا Material
        ),
        child: MaterialButton(
          onPressed: () {
            print('object');
          },
          child: Stack(
            children: [
              Positioned(
                  right: 42,
                  top: 10,
                  child: Image.asset(
                    product.loc.toString(),
                    height: 80,
                    width: 80,
                  )),
              Positioned(
                bottom: 40,
                left: 8,
                child: Text(
                  product.name.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                right: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.price.toString()),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
