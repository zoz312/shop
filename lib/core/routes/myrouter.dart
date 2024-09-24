
import 'package:go_router/go_router.dart';
import 'package:shop/feature/admin/view/AddProductView.dart';
import 'package:shop/feature/admin/view/Adminview.dart';
import 'package:shop/feature/admin/view/viewproduct.dart';
import 'package:shop/feature/auth/Login/presentation/LoginScreen.dart';
import 'package:shop/feature/auth/NewPassword/presenantion/NewPasswodScreen.dart';
import 'package:shop/feature/auth/SinUp/presentation/SinUPScreen.dart';
import 'package:shop/feature/splash/presenten/SplashScreen.dart';

import '../../feature/auth/forgetPassword/presentation/ForgetPasswordScreeen.dart';
import '../../feature/auth/otp/presentation/otpScreen.dart';

abstract class Approte {
  static var router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const Splashscreen();
      },
    ),
     GoRoute(
      path: '/h',
      builder: (context, state) {
        return const Loginscreen();
      },),
       GoRoute(
      path: '/s',
      builder: (context, state) {
        return const Sinupscreen();
      },),
          GoRoute(
      path: '/f',
      builder: (context, state) {
        return const Forgetpasswordscreeen();
      },),
        GoRoute(
      path: '/c',
      builder: (context, state) {
        return const Otpscreen();
      },), GoRoute(
      path: '/n',
      builder: (context, state) {
        return const Newpasswodscreen();
      },),GoRoute(
      path: '/a',
      builder: (context, state) {
        return const Adminview();
      },),
      GoRoute(
      path: '/ad',
      builder: (context, state) {
        return const AddproductView();
      },),
      GoRoute(
      path: '/vi',
      builder: (context, state) {
        return const ViewproductScreen();
      },),
  ]);
}
