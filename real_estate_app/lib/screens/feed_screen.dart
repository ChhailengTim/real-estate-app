import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feed"),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                right: 5,
              ),
              child: GestureDetector(
                onTap: () {
                  debugPrint("Tap");
                },
                child: const Text(
                  "Settings",
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Popular homes in Seattle"),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.amber,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("\$850,00"),
                    Icon(Icons.arrow_upward),
                    Icon(Icons.favorite),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
