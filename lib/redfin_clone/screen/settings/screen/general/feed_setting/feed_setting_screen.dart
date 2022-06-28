import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/controller/notification.dart';
import 'package:real_estate_app/redfin_clone/screen/settings/screen/general/feed_setting/feed_controller.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';
import 'package:real_estate_app/redfin_clone/utils/customdialog.dart';


class FeedSittingsScreen extends StatelessWidget {
  const FeedSittingsScreen({Key? key}) : super(key: key);

  get value => true;

  @override
  Widget build(BuildContext context) {
    final SliderController sx = Get.put(SliderController());
    final PushController controller = Get.put(PushController());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        title: const Text("Feed Settings"),
      ),
      body: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Text("Location & price settings"),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Max price"),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Number",
                      ),
                    ),
                    Text("${sx.range.value}"),
                    Slider(
                        value: sx.range.value,
                        min: 0,
                        max: 255,
                        divisions: 255,
                        //label: numslider.num.round().toString(),
                        onChanged: (double value) {
                          sx.setRange(value);
                        }),
                    const Text("Manage locations shown in the feed"),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Recommendations"),
                    const Text(
                        "Turn off to limit your feed to your saved searches."),
                    MergeSemantics(
                      child: ListTile(
                        title: const Text('Recommendations'),
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
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Recommendations"),
                    const Text(
                        "Turn off to limit your feed to your saved searches."),
                    Row(
                      children: [
                        const Text("Seattle (1) "),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.draw),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Seattle "),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.draw),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Recommendations"),
                    Text("Turn off to limit your feed to your saved searches."),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}