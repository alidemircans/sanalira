import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanalira/helper/routes.dart';
import 'package:sanalira/view/auth/register_view.dart';
import 'package:sanalira/view/banks/bank_view.dart';
import 'package:sanalira/view/onborading/splash_view.dart';
import 'package:sanalira/view_model/auth/register_view_model.dart';
import 'package:sanalira/view_model/banks/bank_view_model.dart';
import 'package:sanalira/view_model/onborading/splash_view_model.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH_PAGE:
        return MaterialPageRoute(
          builder: (_) => MultiProvider(
            providers: [
              ChangeNotifierProvider<SplashViewModel>(
                create: (context) => SplashViewModel(),
              ),
            ],
            child: const SplashView(),
          ),
        );
      case Routes.BANKS_PAGE:
        return MaterialPageRoute(
          builder: (_) => MultiProvider(
            providers: [
              ChangeNotifierProvider<BankViewModel>(
                create: (context) => BankViewModel(),
              ),
            ],
            child: const BanksView(),
          ),
        );

      case Routes.REGISTER_PAGE:
        return MaterialPageRoute(
          builder: (_) => MultiProvider(
            providers: [
              ChangeNotifierProvider<RegisterViewModel>(
                create: (context) => RegisterViewModel(),
              ),
            ],
            child: const RegisterView(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('Ups !'),
            ),
          ),
        );
    }
  }
}
