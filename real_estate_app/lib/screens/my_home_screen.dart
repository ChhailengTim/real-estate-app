import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 50,
                    ),
                    const Text("Do you own a home?"),
                    const Text("Track your home's value and nearby sales."),
                    Container(
                      // color: ,
                      width: double.infinity,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: const Center(
                        child: Text(
                          "See my home estimate",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Ready to Sell?"),
                      const Text("Pay a 1% listing when you sell and buy."),
                      Container(
                        // color: ,
                        width: double.infinity,
                        height: 25,
                        decoration: const BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: const Center(
                          child: Text("Explore selling with Redfin"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
