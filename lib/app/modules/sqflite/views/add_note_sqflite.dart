import 'package:belajar_getx/app/modules/sqflite/controllers/sqflite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNoteSQFlite extends GetView<SqfliteController> {
  const AddNoteSQFlite({super.key});

  @override
  Widget build(BuildContext context) {
    final SqfliteController homeC = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD NOTE'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(),
            child: TextField(
              maxLength: 20,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                suffixIcon: Icon(
                  Icons.abc,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: "What's your name?",
              ),
              controller: controller.titleC,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(),
            child: TextField(
              controller: controller.descC,
              maxLength: 20,
              decoration: const InputDecoration(
                labelText: 'Job',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                suffixIcon: Icon(
                  Icons.abc,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: "WHat's your job?",
              ),
              onChanged: (value) {},
            ),
          ),
          Obx(
            () => ElevatedButton(
              onPressed: () async {
                if (controller.isLoading.isFalse) {
                  controller.addNote();
                  await homeC.getAllNotes();
                  Get.back();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "ADD NOTE" : "LOADING..."),
            ),
          ),
        ],
      ),
    );
  }
}
