import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/email/favorites_list.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/email/seattle_list.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/push/tfn_screen.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';


class EmailNotificationScreen extends StatelessWidget {
  const EmailNotificationScreen({Key? key}) : super(key: key);

  get value => false;

  @override
  Widget build(BuildContext context) {
    final PushController controller = Get.put(PushController());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text("Email Notification"),
      ),
      body: Obx(
        () => Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritesList(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Favorites List',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Never",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SeattleList(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Seattle (1)',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Instant",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SeattleList(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Seattle',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "Instant",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TypesOfNotificatinos(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: const [
                      Text(
                        'Types of Notification',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
              ),
              child: MergeSemantics(
                child: ListTile(
                  title: const Text('Recommended for You'),
                  trailing: CupertinoSwitch(
                    value: controller.switch1.value,
                    onChanged: (value) {
                      controller.switch1.value = value;
                    },
                  ),
                  onTap: () {
                    controller.switch1.value = value;
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.showAlertUnsubscribe(
                  context,
                  title: "Confirmation",
                  subtitle:
                      'Are you sure you want to unsubscribe from all emails?',
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Unsubscribe from Emails',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
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