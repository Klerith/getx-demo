import 'package:get/get.dart';
import 'package:state_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

enum GuestFilter { all, pending, confirmed, rejected }

final uuid = Uuid();

class GuestListController extends GetxController {
  final currentFilter = GuestFilter.all.obs;

  final guestList = <Guest>[
    Guest(id: uuid.v4(), name: 'John Doe', confirmed: true),
    Guest(id: uuid.v4(), name: 'Jane Doe', confirmed: false),
    Guest(id: uuid.v4(), name: 'Alice', confirmed: true),
    Guest(id: uuid.v4(), name: 'Bob', confirmed: false),
  ].obs;

  get filteredGuestList {
    switch (currentFilter.value) {

      case GuestFilter.confirmed:
        return guestList.where((guest) => guest.confirmed).toList();

      case GuestFilter.pending:
        return guestList.where((guest) => !guest.confirmed).toList();

      default:
        return guestList;
    }
  }

  void changeFilter(GuestFilter filter) {
    currentFilter.value = filter;
  }

  void addGuest(String name) {
    final guest = Guest(id: uuid.v4(), name: name);
    guestList.add(guest);
  }

  void toggleConfirmation(String id) {
    final guest = guestList.firstWhere((element) => element.id == id);
    guestList[guestList.indexOf(guest)] =
        guest.copyWith(confirmed: !guest.confirmed);
  }
}
