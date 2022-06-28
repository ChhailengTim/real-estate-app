import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Artical extends GetxController {
  final String? title;
  final String? statement;

  Artical(this.title, this.statement);

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
        value: ("Toul Kok"),
        child: Text("Toul Kok"),
      ),
      const DropdownMenuItem(
        value: ("Terk Thla"),
        child: Text("Terk Thla"),
      ),
      const DropdownMenuItem(
        value: ("Beoung Kork"),
        child: Text("Beoung Kork"),
      ),
      const DropdownMenuItem(
        value: ("Sen sok"),
        child: Text("Sen sok"),
      ),
      const DropdownMenuItem(
        value: ("Beoung Snor"),
        child: Text("Beoung Snor"),
      ),
    ].obs;
    return menuItems;
  }
}
