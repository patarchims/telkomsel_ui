import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:telkomsel_ui/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/mainPage',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/verificatonPage', page: () => VerificationPage()),
        GetPage(name: '/dasboardPage', page: () => DashboardPage()),
        GetPage(name: '/mainPage', page: () => MainPage())
      ],
    );
  }
}
