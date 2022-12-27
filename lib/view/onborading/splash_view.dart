import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sanalira/view_model/onborading/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashViewModel>(context).onInit(context);
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
