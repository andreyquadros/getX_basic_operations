import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_example/controller/button_value_controller.dart';
import 'package:get_example/views/home_page.dart';

void main(){
  ButtonValueController buttonValueController = Get.put(ButtonValueController());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}