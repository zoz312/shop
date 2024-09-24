import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shop/constants.dart';
import 'package:shop/feature/admin/data/fireStore.dart';
import 'package:shop/feature/admin/data/product.dart';

part 'admin_state.dart';

class AdminCubit extends Cubit<AdminState> {
  AdminCubit() : super(AdminInitial());
  void Addproduct({required Product product}) {
    final addproduct = Store().addprduct(product);
  }

  void getprouct() {
    final z = Store().data;

    z.orderBy('name', descending: true).snapshots().listen(
      (event) {
        List<Product> modelproduct = [];
        for (var coc in event.docs) {
          modelproduct.add(Product.formjson(coc));
        }
        emit(AdminLoaded(product: modelproduct));
      },
    );
  }
}
