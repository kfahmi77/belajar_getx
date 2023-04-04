import 'package:belajar_getx/app/modules/sqflite/controllers/sqflite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const AddNoteSQFlite());

class AddNoteSQFlite extends GetView<SqfliteController> {
  const AddNoteSQFlite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD NOTE'),
        centerTitle: true,
      ),
    );
  }
}
