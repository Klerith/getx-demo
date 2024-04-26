import 'package:flutter/material.dart';
import 'package:state_app/config/theme/app_theme.dart';
import 'package:state_app/config/router/app_router.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'GetX',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme( isDarkMode: false ).getTheme(),
    );
  }
}