import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Popular homes in Seattle",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.amber,
            child: Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.all(60),
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.place),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("850,000"),
                    Spacer(),
                    Icon(Icons.arrow_upward),
                    Icon(Icons.favorite_border),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "4 Bed",
                    ),
                    Text(
                      "3 Baths",
                    ),
                    Text(
                      "1,610 Sq.Ft",
                    ),
                  ],
                ),
                const Text(
                  "13772 27th Ave NE, Seattle, WA 98125",
                ),
                const Text(
                  "Listing provide by NWMLS",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
