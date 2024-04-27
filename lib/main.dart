import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/config/config.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:state_app/presentation/store/store.dart';

void main() async {
  // Get.put(GlobalUsernameController());
  // await GetStorage.init();
  await LocalStorageAdapter.init();

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
      theme: AppTheme(isDarkMode: false).getTheme(),
      initialBinding: StoreBindings(),
    );
  }
}
