import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white30,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black26,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                debugPrint("Text");
              },
              child: const Center(
                child: Text("Map"),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 150,
        ),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.favorite_border,
              size: 100,
            ),
            Text(
              "You have no favorites",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 20,
                  ),
            ),
            const Text(
                "Favorite homes while you browse to stay up to date on price and status changes"),
            Container(
              // color: ,
              width: double.infinity,
              height: 30,
              decoration: const BoxDecoration(
                ///NOTE : use color like this
                color: AppColor.primary,
                borderRadius: BorderRadius.zero,
              ),
              child: Center(
                child: Text(
                  "Browse Homes",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 15,
                        color: Colors.white,
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
