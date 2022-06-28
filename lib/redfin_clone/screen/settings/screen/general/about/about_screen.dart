import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

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
                const Icon(Icons.arrow_forward_ios),
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
        title: const Text("About"),
      ),
      body: Column(
        children: [
          costomTile(context, text: "About"),
          costomTile(context, text: "Terms of Use"),
          costomTile(context, text: "Privacy Policy"),
          costomTile(context, text: "Open Source Licenses"),
        ],
      ),
    );
  }
}
