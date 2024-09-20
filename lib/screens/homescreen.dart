import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/controllers/theme_contoller.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  ThemeController controllerTheme = Get.put(ThemeController()); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controllerTheme.isValue.value?"Dark":"Light")),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tap on the switch to change the theme"),
           Obx(() =>  Switch(value: controllerTheme.isValue.value, onChanged: (value){
            controllerTheme.changeVal(value);
          })),
          ],
        ),
      ),
    );
  }

}
