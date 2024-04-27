import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/presentation/store/controllers/guest_list.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estado compuesto'),
      ),
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class _TodoView extends GetView<GuestListController> {
  const _TodoView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        /// Filtro de invitados
        Obx(
          () => SegmentedButton(
            multiSelectionEnabled: false,
            segments: const [
              ButtonSegment(value: GuestFilter.all, icon: Text('Todos')),
              ButtonSegment(
                  value: GuestFilter.confirmed, icon: Text('Confirmados')),
              ButtonSegment(
                  value: GuestFilter.pending, icon: Text('Pendientes')),
            ],
            selected: <GuestFilter>{ controller.currentFilter.value },
            onSelectionChanged: (value) {
              controller.changeFilter(value.first);
            },
          ),
        ),
        const SizedBox(height: 5),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SwitchListTile(
                  title: const Text('Juan Carlos'),
                  value: true,
                  onChanged: (value) {});
            },
          ),
        )
      ],
    );
  }
}
