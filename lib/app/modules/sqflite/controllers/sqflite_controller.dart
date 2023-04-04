import 'package:belajar_getx/app/data/db_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../../../data/models/dummy_model.dart';

class SqfliteController extends GetxController {
  RxBool isLoading = false.obs;
  RxList allNote = <Dummy>[].obs;
  DatabaseManager database = DatabaseManager.instance;

  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();

  void addNote() async {
    if (titleC.text.isNotEmpty && descC.text.isNotEmpty) {
      isLoading.value = true;
      Database db = await database.db;
      await db.insert(
        'notes',
        {
          "name": titleC.text,
          "job": descC.text,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      titleC.clear();
      descC.clear();
      isLoading.value = false;
    }
  }

  Future<void> getAllNotes() async {
    Database db = await database.db;
    List<Map<String, dynamic>> data = await db.query("notes");

    if (data.isNotEmpty) {
      allNote(Dummy.toJsonList(data));
      allNote.refresh();
    } else {
      allNote.clear();
      allNote.refresh();
    }
  }

  Future<void> deleteNotes(int id) async {
    Database db = await database.db;
    await db.delete("notes", where: "id = ?", whereArgs: [id]);
    getAllNotes();
  }

  Future<void> editNotes(int id) async {
    Database db = await database.db;
    await db.update(
        "notes",
        {
          "name": titleC.text,
          "job": descC.text,
        },
        where: "id = ?",
        whereArgs: [id]);
    getAllNotes();
  }

  @override
  void onInit() {
    getAllNotes();
    super.onInit();
  }
}
