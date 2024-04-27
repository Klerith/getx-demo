import 'package:get/get.dart';

class CounterController extends GetxController {

  int counter = 0;

  void increment() {
    counter++;
    update();
  }

}

class CounterReactiveController extends GetxController {

  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
  }

}