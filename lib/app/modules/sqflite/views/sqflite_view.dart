import 'package:belajar_getx/app/modules/common/navigation_drawer.dart';
import 'package:belajar_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sqflite_controller.dart';

class SqfliteView extends GetView<SqfliteController> {
  const SqfliteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SqfliteView'),
          centerTitle: true,
        ),
        drawer: NavigationDrawerWidget(),
        body: ListView.builder(
          itemCount: 10,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://i.ibb.co/QrTHd59/woman.jpg",
                  ),
                ),
                title: const Text("Jessica Doe"),
                subtitle: const Text("Programmer"),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.add_note_sqflite);
          },
          child: const Icon(Icons.add),
        ));
  }
}
