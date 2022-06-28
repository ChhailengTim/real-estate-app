import 'package:flutter/material.dart';

class PastToursScreen extends StatelessWidget {
  const PastToursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Past Tours",
        style: TextStyle(fontFamily: 'sf_pro_meduim'),
      )),
    );
  }
}
