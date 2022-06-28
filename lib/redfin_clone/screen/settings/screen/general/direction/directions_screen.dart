import 'package:flutter/material.dart';

class DirectionSettingScreen extends StatelessWidget {
  const DirectionSettingScreen({Key? key}) : super(key: key);

  Widget costomTile(
    BuildContext context, {
    String? text,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Ink(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            // color: Colors.white,
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  text ?? "",
                  style: const TextStyle(fontSize: 18),
                ),
                const Spacer(),
                const Icon(Icons.check),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Directions Settings"),
      ),
      body: Column(
        children: [
          costomTile(context, text: "Redfin Directions"),
          costomTile(context, text: "Apple Maps"),
          costomTile(context, text: "Google Maps"),
          costomTile(context, text: "Ask me everytime"),
        ],
      ),
    );
  }
}
