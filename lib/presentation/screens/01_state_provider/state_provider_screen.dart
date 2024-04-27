import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/config/config.dart';
import 'package:state_app/presentation/screens/controllers/controllers.dart';

class BasicStateScreen extends StatelessWidget {
  const BasicStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterReactiveCtrl = Get.put(CounterReactiveController());
    final globalUsername = Get.find<GlobalUsernameController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Estados básicos'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          IconButton(
            // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
            icon: const Icon(Icons.dark_mode_outlined, size: 100),
            onPressed: () {},
          ),
          Obx(
            () => Text('${globalUsername.username}',
                style: const TextStyle(fontSize: 25)),
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.add,
              size: 50,
            ),
            label: GetBuilder<CounterController>(
              init: CounterController(),
              builder: (controller) => Text('${controller.counter}',
                  style: const TextStyle(fontSize: 100)),
            ),
            onPressed: () {
              final counterController = Get.find<CounterController>();
              counterController.increment();
            },
          ),
          TextButton.icon(
            icon: const Icon(
              Icons.add,
              size: 50,
            ),
            label: Obx(() => Text('${counterReactiveCtrl.counter}',
                style: const TextStyle(fontSize: 100))),
            onPressed: () {
              final counterController = Get.find<CounterReactiveController>();
              counterController.increment();
            },
          ),
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nombre aleatorio'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {
          globalUsername.changeUsername(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}
