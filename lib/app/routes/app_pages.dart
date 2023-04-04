import 'package:belajar_getx/app/modules/sqflite/views/add_note_sqflite.dart';
import 'package:belajar_getx/app/modules/sqflite/views/edit_note_sqflite_view.dart';
import 'package:get/get.dart';

import '../modules/hive/bindings/hive_binding.dart';
import '../modules/hive/views/hive_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/moor/bindings/moor_binding.dart';
import '../modules/moor/views/moor_view.dart';
import '../modules/sqflite/bindings/sqflite_binding.dart';
import '../modules/sqflite/views/sqflite_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SQFLITE,
      page: () => SqfliteView(),
      binding: SqfliteBinding(),
    ),
    GetPage(
      name: _Paths.add_note_sqflite,
      page: () => AddNoteSQFlite(),
      binding: SqfliteBinding(),
    ),
    GetPage(
      name: _Paths.editNoteSqflite,
      page: () => EditNoteSqfliteView(),
      binding: SqfliteBinding(),
    ),
    GetPage(
      name: _Paths.HIVE,
      page: () => const HiveView(),
      binding: HiveBinding(),
    ),
    GetPage(
      name: _Paths.MOOR,
      page: () => const MoorView(),
      binding: MoorBinding(),
    ),
  ];
}
