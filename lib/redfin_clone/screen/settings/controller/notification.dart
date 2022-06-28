import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PushController extends GetxController {
  final switch1 = false.obs;
  final switch2 = true.obs;
  final switch3 = false.obs;
  final switch4 = true.obs;
  final switch5 = false.obs;
  final switch6 = true.obs;

  void showAlertUnsubscribe(BuildContext context,
      {String? title, subtitle, cancle, accept}) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title ?? ''),
        content: Text(subtitle ?? ""),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(cancle ?? "Cancel"),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              accept ?? "I'm sure",
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    ).obs;
  }
}
