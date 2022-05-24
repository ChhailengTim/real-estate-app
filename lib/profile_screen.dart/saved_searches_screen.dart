import 'package:flutter/material.dart';

class SavedSearchScreen extends StatelessWidget {
  const SavedSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved Searches",
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.saved_search,
              size: 100,
              color: Colors.black38,
            ),
            Text(
              "What? No saved searches?",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Text(
                "Just save a search on the map and we'll \n email you about new homes that match \n                         your search."),
          ],
        ),
      ),
    );
  }
}
