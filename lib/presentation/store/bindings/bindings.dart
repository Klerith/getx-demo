import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:state_app/presentation/store/controllers/controllers.dart';

class StoreBindings extends Bindings {
  @override
  void dependencies() {
    // GetStorage box = GetStorage();

    // final String globalUsername =
    //     box.read('globalUsername') ?? 'Fernando Herrera';

    Get.put(GlobalUsernameController(
        initialUsername: 'Juan', //'Juan Mendoza'
        ));
  }
}
