import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/presentation/store/controllers/controllers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final globalUsername = Get.find<GlobalUsernameController>().username;

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(globalUsername.value)),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _CustomListTile(
            title: 'basic-state'.tr,
            subTitle: 'basic-state-desc'.tr,
            location: '/basic-state'),
        _CustomListTile(
            title: 'i18n-locales'.tr,
            subTitle: 'i18n-locales-desc'.tr,
            location: '/lang-i18n'),
        _CustomListTile(
            title: 'compose-state'.tr,
            subTitle: 'compose-state-desc'.tr,
            location: '/complex-state'),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        // onTap: () => context.push(location),
        // onTap: () => Get.to( HomeScreen() ) );
        onTap: () => Get.toNamed( location ) );
  }
}
