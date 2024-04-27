import 'package:get/get.dart';



class GlobalUsernameController extends GetxController {

  final username = 'Fernando Herrera'.obs;

  void changeUsername( String name ) {
    username.value = name;
  }

}