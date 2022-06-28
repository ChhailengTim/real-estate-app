import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/notification/push/tfn_screen.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';
import 'package:real_estate_app/redfin_clone/utils/customdialog.dart';


class AppNotification extends StatefulWidget {
  const AppNotification({Key? key}) : super(key: key);

  @override
  State<AppNotification> createState() => _AppNotificationState();
}

class _AppNotificationState extends State<AppNotification> {
  final PushController controller = Get.put(PushController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text("App Notification"),
      ),
      body: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("FAVORITES"),
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
                child: ListTile(
                  title: const Text('Favorites List'),
                  trailing: CustomDialog.button(
                    value: controller.switch1.value,
                    onChanged: (value) {
                      controller.switch1.value = value;
                    },
                  ),
                  onTap: () {},
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
                          'Types of Notifications',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("SAVED SEARCHES"),
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
                    title: const Text('Seattle (1)'),
                    subtitle: const Text("No additional options specified"),
                    trailing: CustomDialog.button(
                      value: controller.switch2.value,
                      onChanged: (value) {
                        controller.switch2.value = value;
                      },
                    ),
                    onTap: () {},
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
                    title: const Text('Seattle'),
                    subtitle: const Text("No additional options specified"),
                    trailing: CustomDialog.button(
                      value: controller.switch3.value,
                      onChanged: (value) {
                        controller.switch3.value = value;
                      },
                    ),
                    onTap: () {},
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
                          'Types of Notifications',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("RECOMMENDATIONS"),
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
                child: ListTile(
                  title: const Text('Recommended for You'),
                  trailing: CustomDialog.button(
                    value: controller.switch4.value,
                    onChanged: (value) {
                      controller.switch4.value = value;
                    },
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("TOURS"),
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
                    title: const Text('Scheduled Tour Reminders'),
                    trailing: CustomDialog.button(
                      value: controller.switch5.value,
                      onChanged: (value) {
                        controller.switch5.value = value;
                      },
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  controller.showAlertUnsubscribe(context,
                      title: 'Confirmation',
                      subtitle:
                          "Are you sure you want to unsubscribe from all app notifications?");
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
                          'Unsubscribe from App Notification',
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
      ),
    );
  }
}