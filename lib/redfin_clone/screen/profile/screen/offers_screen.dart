import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.monetization_on,
              size: 200,
            ),
            Text(
              "You don't have any offers, currently",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                  ),
            ),
            const Text(
                "Get started on another offer day or night. seven days a \n                                           week"),
            GestureDetector(
              onTap: () {
                debugPrint("start an offer");
              },
              child: Text(
                "Start an offer",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}