import 'package:flutter/material.dart';

class FavoritesList extends StatelessWidget {
  const FavoritesList({Key? key}) : super(key: key);

  Widget costomTile(
    BuildContext context, {
    String? text,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Ink(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            // color: Colors.white,
            border: Border.all(
              color: Colors.black12,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  text ?? "",
                  style: const TextStyle(fontSize: 18),
                ),
                const Spacer(),
                const Icon(Icons.check_box),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, {String? appBarTitle}) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle ?? "Favorites List"),
      ),
      body: Column(
        children: [
          costomTile(
            context,
            text: "Instant",
          ),
          costomTile(
            context,
            text: "Daily",
          ),
          costomTile(
            context,
            text: "Never",
          ),
        ],
      ),
    );
  }
}