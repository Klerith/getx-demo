import 'package:get/get.dart';
import 'package:state_app/config/config.dart';



class GlobalUsernameController extends GetxController {

  GlobalUsernameController({
    String initialUsername = 'Fernando Herrera',
  }): username = initialUsername.obs;

  // final username = 'Fernando Herrera'.obs;
  final RxString username;

  void changeUsername( String name ) {
    username.value = name;
    LocalStorageAdapter.save('globalUsername', name);

  }

}