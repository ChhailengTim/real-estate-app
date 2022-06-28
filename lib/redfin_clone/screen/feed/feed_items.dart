import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final String? hot;
  final String? price;
  final String? bed;
  final String? bath;
  final String? sq;
  final String? address;
  final String? lister;
  const FeedItem(
      {Key? key,
      this.hot,
      this.price,
      this.bed,
      this.bath,
      this.sq,
      this.address,
      this.lister})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      "${bed ?? '--'} Bed",
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
}