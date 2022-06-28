import 'package:flutter/material.dart';

class FindHome extends StatelessWidget {
  const FindHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                onError: (a, s) {},
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg'))),
      ),
    );
  }
}