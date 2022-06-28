import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/screen/profile/model/customtile.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("My Redfin"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Join to unlock the full experience",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 23),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(3),
                            //border: Border.all(color: Colors.black, width: 3),
                          ),
                          child: const Text(
                            "Join",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTile(
                icon: Icons.park,
                text: "Open House Schedule",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.remove_red_eye,
                text: "Recently Viewed",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.manage_search,
                text: "Open House Schedule",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.sell,
                text: "Sell Your Home",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.badge,
                text: "Careers",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.class_outlined,
                text: "Classes and Events",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.settings,
                text: "Settings",
              ),
              const Divider(height: 2),
              const CustomTile(
                icon: Icons.flag,
                text: "Get Help",
              ),
            ],
          ),
        ),
      ),
    );
  }
}