import 'package:flutter/material.dart';

class RecentlyViewedScreen extends StatelessWidget {
  const RecentlyViewedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recently Viewed",
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 20),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            alignment: Alignment.center,
            child: Text(
              "Map",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 15),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.remove_red_eye_outlined,
              size: 100,
              color: Colors.black38,
            ),
            Text(
              "You have no recently viewed \n                    homes",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text(
                "View homes on Redfin and reference \n   your recently viewed homes here"),
          ],
        ),
      ),
    );
  }
}
