import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';

class PaymentModel {
  final String? title;
  final double? amount;
  final Color? color;
  PaymentModel({this.title, this.amount, this.color = Colors.transparent});
}

final paymentItemList = <PaymentModel>[
  PaymentModel(
    title: 'Principle and Interest',
    amount: 500,
    color: AppColor.primary,
  ),
  PaymentModel(
    title: 'Principle and Interest',
    amount: 300,
    color: const Color.fromARGB(255, 255, 59, 235),
  ),
  PaymentModel(
    title: 'Principle and Interest',
    amount: 200,
    color: const Color.fromARGB(255, 86, 76, 175),
  ),
];
