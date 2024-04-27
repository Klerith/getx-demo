import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LocalI18nScreen extends StatelessWidget {
  const LocalI18nScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locale y traducciones'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1,),


            Text('hello-world'.tr, style: const TextStyle(fontSize: 25 )),

  
            
            const Spacer( flex: 2 ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('change-language'.tr),
        icon: const Icon( Icons.refresh_rounded ),
        onPressed: () {
          if (Get.locale?.languageCode == 'en') {
            Get.updateLocale(const Locale('es', 'ES'));
          } else if (Get.locale?.languageCode == 'es') {
            Get.updateLocale(const Locale('fr', 'FR'));
          } else {
            Get.updateLocale(const Locale('en', 'US'));
          }
        },
      ),
    );
  }
}