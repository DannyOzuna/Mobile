import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tablaperiodica/models/periodic_table_element.dart';

class ElementController extends GetxController {
  Future<List<PeriodicTableElement>> loadData() async {
    Iterable table =
        json.decode(await rootBundle.loadString("assets/elements.json"));
    var elementList = List<PeriodicTableElement>.from(
        table.map((e) => PeriodicTableElement.fromJson(e)));
    elementList.sort((a, b) => a.name.compareTo(b.name));

    return elementList;
  }
}
