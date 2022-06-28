import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/utils/customdialog.dart';

class TextNotificationScreen extends StatelessWidget {
  const TextNotificationScreen({Key? key}) : super(key: key);

  get value => false;

  @override
  Widget build(BuildContext context) {
    final PushController controller = Get.put(PushController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Notification"),
      ),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("TOURS"),
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
                  trailing: CustomDialog.button(
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
          ],
        ),
      ),
    );
  }
}
