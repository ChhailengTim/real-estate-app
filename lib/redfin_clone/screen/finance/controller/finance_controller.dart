import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinanceController extends GetxController {
  final slider = 0.0.obs;
  final mynum = 50.0.obs;

  final listBottom = [
    BottomItem(icon: Icons.home, title: 'Home'),
    BottomItem(icon: Icons.book, title: 'Book'),
    BottomItem(icon: Icons.school, title: 'School'),
  ].obs;
}

class BottomItem {
  final IconData? icon;
  final String? title;
  BottomItem({
    this.icon,
    this.title,
  });
}