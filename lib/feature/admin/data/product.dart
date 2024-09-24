class Product {
 final String? name, price, desc, cat, loc;

  Product(this.name, this.cat, this.desc, this.loc, this.price,);

  factory Product.formjson(jsondata) {
    return Product(jsondata['name'],jsondata['cat'],jsondata['desc'],jsondata['loc'],jsondata['price']);
  }
}
