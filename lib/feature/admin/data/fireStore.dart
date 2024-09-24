import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/constants.dart';
import 'package:shop/feature/admin/data/product.dart';

class Store {
  CollectionReference data = FirebaseFirestore.instance.collection(collection);
  addprduct(Product prouct) {
    data.add({
      'name': prouct.name,
      'price': prouct.price,
      'cat': prouct.cat,
      'loc': prouct.loc,
      'desc': prouct.desc,
    });
  }

  
}
