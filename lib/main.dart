import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanalira/core/di/locator.dart';
import 'package:sanalira/helper/app_strings.dart';
import 'package:sanalira/helper/routes_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const SanaLiraApp());
}

class SanaLiraApp extends StatelessWidget {
  const SanaLiraApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          onGenerateRoute: RoutesManager.generateRoute,
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
        );
      },
    );
  }
}
