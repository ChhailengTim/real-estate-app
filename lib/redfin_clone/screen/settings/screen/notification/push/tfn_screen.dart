import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/utils/customdialog.dart';

class TypesOfNotificatinos extends StatelessWidget {
  const TypesOfNotificatinos({Key? key}) : super(key: key);

  get value => false;

  @override
  Widget build(BuildContext context) {
    final PushController controller = Get.put(PushController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Types of Notifications"),
      ),
      body: Obx(
        () => Column(
          children: [
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
                  title: const Text('New Listings'),
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
                  title: const Text('Price Changes'),
                  trailing: CustomDialog.button(
                    value: controller.switch2.value,
                    onChanged: (value) {
                      controller.switch2.value = value;
                    },
                  ),
                  onTap: () {
                    controller.switch2.value = value;
                  },
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
                  title: const Text('New Tour Insights'),
                  trailing: CustomDialog.button(
                    value: controller.switch3.value,
                    onChanged: (value) {
                      controller.switch3.value = value;
                    },
                  ),
                  onTap: () {
                    controller.switch3.value = value;
                  },
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
                  title: const Text('Status Changes'),
                  trailing: CustomDialog.button(
                    value: controller.switch4.value,
                    onChanged: (value) {
                      controller.switch4.value = value;
                    },
                  ),
                  onTap: () {
                    controller.switch4.value = value;
                  },
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
                  title: const Text('Sold Listing'),
                  trailing: CustomDialog.button(
                    value: controller.switch5.value,
                    onChanged: (value) {
                      controller.switch5.value = value;
                    },
                  ),
                  onTap: () {
                    controller.switch5.value = value;
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
