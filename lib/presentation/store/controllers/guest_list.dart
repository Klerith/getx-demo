import 'package:get/get.dart';


enum GuestFilter { all, pending, confirmed, rejected}


class GuestListController extends GetxController {

  final currentFilter = GuestFilter.all.obs;



  void changeFilter(GuestFilter filter) {
    currentFilter.value = filter;
  }
  
}