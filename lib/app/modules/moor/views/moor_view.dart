import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/moor_controller.dart';

class MoorView extends GetView<MoorController> {
  const MoorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MoorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
