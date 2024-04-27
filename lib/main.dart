import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/config/theme/app_theme.dart';
import 'package:state_app/config/router/app_router.dart';
import 'package:state_app/presentation/screens/controllers/controllers.dart';


void main() {

  Get.put(GlobalUsernameController());

  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      // routerConfig: appRouter,
      getPages: getPages,
      theme: AppTheme( isDarkMode: false ).getTheme(),
    );
  }
}