import 'package:get/get.dart';
import 'package:state_app/config/config.dart';
import 'package:state_app/presentation/store/controllers/controllers.dart';

class StoreBindings extends Bindings {
  @override
  void dependencies() {
    // GetStorage box = GetStorage();

    // final String globalUsername =
    //     box.read('globalUsername') ?? 'Fernando Herrera';
    final globalUsername = LocalStorageAdapter.read<String>('globalUsername');

    Get.put(GlobalUsernameController(
      initialUsername: globalUsername ?? 'Fernando Herrera', //'Juan Mendoza'
    ));

    Get.put(ThemeController(
        currentTheme: LocalStorageAdapter.read<bool>('isDarkMode') ?? Get.isPlatformDarkMode));


    Get.lazyPut(() => GuestListController());
  }
}
