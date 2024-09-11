import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_example/controller/button_value_controller.dart';
import 'package:get_example/views/results_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ButtonValueController buttonValueController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Página Inicial',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => ResultsPage());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    'Ir para a Página de Resultados',
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Text(
                    'Mudar tema',
                    style: TextStyle(color: Colors.white),
                  )),ElevatedButton(
                  onPressed: () {
                   print(GetPlatform.isAndroid);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  child: Text(
                    'Está usando IOS?',
                    style: TextStyle(color: Colors.white),
                  )),ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(title: 'Testandoooo', content: Text('Conteudoo........'));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple)),
                  child: Text(
                    'Snack ou Dialog',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: buttonValueController.increment,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
