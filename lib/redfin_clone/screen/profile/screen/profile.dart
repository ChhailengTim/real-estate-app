import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/screen/profile/model/customtile.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/setting_screen.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';


class ProfileLockScreen extends StatelessWidget {
  const ProfileLockScreen({Key? key, this.username}) : super(key: key);
  final String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: Text(username ?? "username"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "My home search",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const CustomTile(
                icon: Icons.remove_red_eye,
                text: "Recently viewed",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.favorite_outline,
                text: "Favorites & comments",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.saved_search_sharp,
                text: "Saved searches",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.pin_end,
                text: "Open houses",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.calendar_month,
                text: "Past tours",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.note,
                text: "Offers",
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Finances",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const CustomTile(
                icon: Icons.wallet,
                text: "Monthly payment calculator",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.calculate_outlined,
                text: "How much can I afford?",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.home_filled,
                text: "Compare mortgage rates",
              ),
              const SizedBox(
                height: 1,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Finances",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const CustomTile(
                icon: Icons.sell,
                text: "Sell my home",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.connect_without_contact,
                text: "Connect with a Redfin Agent",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.school,
                text: "Free real estate classes and events",
              ),
              const SizedBox(
                height: 1,
              ),
              const CustomTile(
                icon: Icons.analytics,
                text: "Real estate news",
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTile(
                icon: Icons.badge,
                text: "Careers",
              ),
              const SizedBox(
                height: 1,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}