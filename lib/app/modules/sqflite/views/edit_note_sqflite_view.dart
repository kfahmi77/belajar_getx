import 'package:belajar_getx/app/data/models/dummy_model.dart';
import 'package:belajar_getx/app/modules/sqflite/controllers/sqflite_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditNoteSqfliteView extends GetView<SqfliteController> {
  const EditNoteSqfliteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Dummy note = Get.arguments;
    controller.titleC = note.job == null
        ? TextEditingController(text: "")
        : TextEditingController(text: note.name!);
    controller.descC = note.job == null
        ? TextEditingController(text: "")
        : TextEditingController(text: note.job!);

    void _showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Peringatan'),
          content: Text('Mohon isi input terlebih dahulu'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('EditNoteSqfliteView'),
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
                if (controller.isLoading.isFalse &&
                    controller.titleC.text.isNotEmpty &&
                    controller.descC.text.isNotEmpty) {
                  controller.editNotes(note.id!);
                  await controller.getAllNotes();
                  Get.back();
                } else {
                  _showAlertDialog();
                }
              },
              child: Text(
                  controller.isLoading.isFalse ? "EDIT NOTE" : "LOADING..."),
            ),
          ),
        ],
      ),
    );
  }
}
