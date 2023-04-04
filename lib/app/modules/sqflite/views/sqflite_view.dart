import 'package:belajar_getx/app/data/models/dummy_model.dart';
import 'package:belajar_getx/app/modules/sqflite/controllers/sqflite_controller.dart';
import 'package:belajar_getx/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/navigation_drawer.dart';

class SqfliteView extends GetView<SqfliteController> {
  const SqfliteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ALL NOTES'),
        centerTitle: true,
      ),
      drawer: const NavigationDrawerWidget(),
      body: FutureBuilder(
        future: controller.getAllNotes(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Obx(
            () => (controller.allNote.length == 0)
                ? const Center(
                    child: Text("Tidak ada data"),
                  )
                : ListView.builder(
                    itemCount: controller.allNote.length,
                    itemBuilder: (context, index) {
                      Dummy note = controller.allNote[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text("${note.id}"),
                        ),
                        title: Text("${note.name}"),
                        subtitle: Text("${note.job}"),
                        trailing: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      );
                    },
                  ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.add_note_sqflite),
        child: const Icon(Icons.add),
      ),
    );
  }
}
