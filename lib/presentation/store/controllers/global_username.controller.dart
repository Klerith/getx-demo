import 'package:get/get.dart';



class GlobalUsernameController extends GetxController {

  GlobalUsernameController({
    String initialUsername = 'Fernando Herrera',
  }): username = initialUsername.obs;

  // final username = 'Fernando Herrera'.obs;
  final RxString username;

  void changeUsername( String name ) {
    username.value = name;
  }

}