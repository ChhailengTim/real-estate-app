import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/general/about/about_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/general/direction/directions_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/general/feed_setting/feed_setting_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/email/email_notification.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/push/push_screen.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/text/text_notification.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

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
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PushController controller = Get.put(PushController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "NOTIFICATIONS",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                costomTile(
                  context,
                  text: "Push",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppNotification(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                costomTile(
                  context,
                  text: "Email",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailNotificationScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                costomTile(
                  context,
                  text: "Text",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TextNotificationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "GENERAL",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                costomTile(context, text: "Feed Settings", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeedSittingsScreen(),
                    ),
                  );
                }),
                const SizedBox(
                  height: 5,
                ),
                costomTile(context, text: "Directions", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DirectionSettingScreen(),
                    ),
                  );
                }),
                const SizedBox(
                  height: 5,
                ),
                costomTile(context, text: "About", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                }),
                const SizedBox(
                  height: 5,
                ),
                costomTile(
                  context,
                  text: "Get Help",
                ),
                const SizedBox(
                  height: 5,
                ),
                costomTile(
                  context,
                  text: "Delet My Account",
                  onTap: () {
                    controller.showAlertUnsubscribe(
                      context,
                      title: 'Are you sure you want to delete your account?',
                      subtitle:
                          "Once your account is deleted it cannot be undone",
                      accept: "Yes, delete",
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            costomTile(
              context,
              text: "Sign Out",
              onTap: () {
                controller.showAlertUnsubscribe(context,
                    title: 'Confirmation',
                    subtitle:
                        "Are you sure you want to unsubscribe from all app notifications?");
              },
            ),
          ],
        ),
      ),
    );
  }
}