import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/controller/button_value_controller.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({super.key});

  ButtonValueController buttonValueController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Página de Resultados',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Foi clicado no botão abaixo: '),
              Obx(() =>
                  Text(
                    '${buttonValueController.count}',
                    style: TextStyle(fontSize: 32),
                  )),
              Text(
                'vezes',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
