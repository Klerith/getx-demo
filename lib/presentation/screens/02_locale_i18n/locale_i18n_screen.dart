import 'package:flutter/material.dart';


class LocalI18nScreen extends StatelessWidget {
  const LocalI18nScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Locale y traducciones'),
      ),
      body: const Center(
        child: Column(
          children: [
            Spacer(flex: 1,),


            Text('Hola Mundo', style: TextStyle(fontSize: 25 )),

  
            
            Spacer( flex: 2 ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Cambiar idioma'),
        icon: const Icon( Icons.refresh_rounded ),
        onPressed: () {},
      ),
    );
  }
}