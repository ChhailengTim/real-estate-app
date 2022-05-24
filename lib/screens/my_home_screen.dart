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
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.home,
                      size: 50,
                    ),
                    Text(
                      "Do you own a home?",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20,
                          ),
                    ),
                    Text(
                      "Track your home's value and nearby sales.",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Container(
                      // color: ,
                      width: double.infinity,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Center(
                        child: Text(
                          "See my home estimate",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 15, color: Colors.white),
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
                      Text(
                        "Ready to Sell?",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        "Pay a 1% listing when you sell and buy.",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Container(
                        // color: ,
                        width: double.infinity,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Center(
                          child: Text(
                            "Explore selling with Redfin",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 15,
                                    ),
                          ),
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
