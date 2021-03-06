import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  Widget addOn(
    BuildContext context, {
    String? hot,
    String? price,
    String? bed,
    String? bath,
    String? sq,
    String? address,
    String? lister,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      // borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.place,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(hot ?? ""),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(price ?? ""),
                    const Spacer(),
                    const Icon(Icons.arrow_upward),
                    const Icon(Icons.favorite_border),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      bed ?? "Bed",
                    ),
                    Text(
                      bath ?? "Baths",
                    ),
                    Text(
                      sq ?? ("Sq.Ft"),
                    ),
                  ],
                ),
                Text(
                  address ?? "",
                ),
                Text(
                  lister ?? "Listing provide by $lister",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.home,
                              size: 80,
                            ),
                            Text(
                              "Welcome to your feed",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const Text(
                                "We'll recommend new homes like the ones you click and favorite.")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular homes in Seattle",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              addOn(
                context,
                hot: "HOT HOME",
                price: "\$ 180,000",
                bed: "4 Bed",
                bath: " 5 Baths",
                sq: " 45 Sq.Ft",
                lister: "Listing by kim",
              ),
              const SizedBox(
                height: 10,
              ),
              addOn(
                context,
                hot: "HOT HOME",
                price: "\$ 180,000",
                bed: "4 Bed",
                bath: " 5 Baths",
                sq: " 45 Sq.Ft",
                lister: "Listing by kim",
              ),
              const SizedBox(
                height: 10,
              ),
              addOn(
                context,
                hot: "HOT HOME",
                price: "\$ 180,000",
                bed: "4 Bed",
                bath: " 5 Baths",
                sq: " 45 Sq.Ft",
                lister: "Listing by kim",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
