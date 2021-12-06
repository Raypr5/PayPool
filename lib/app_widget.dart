import 'package:flutter/material.dart';
import 'package:paypool/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:paypool/modules/home/home_page.dart';
import 'package:paypool/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayPool',
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => Splash_Page(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => HomePage(),
        "/barcode_scanner" : (context) => BarcodeScannerPage(),



      },
    );
  }
}