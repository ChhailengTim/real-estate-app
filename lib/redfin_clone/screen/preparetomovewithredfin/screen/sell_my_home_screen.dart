import 'package:flutter/material.dart';

class SellMyHomeScreen extends StatelessWidget {
  const SellMyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("test")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const Text("Sell for more, pay a 1.5% listing fee."),
                Text(
                  "What is your property's address?",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 20,
                      ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'e.g. 162 Harrison St.',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(1.0),
                      ),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1.0)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
