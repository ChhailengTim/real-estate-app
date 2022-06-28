import 'package:flutter/material.dart';

class OpenHouseScheduleScreen extends StatefulWidget {
  const OpenHouseScheduleScreen({super.key});

  @override
  State<OpenHouseScheduleScreen> createState() =>
      _OpenHouseScheduleScreenState();
}

class _OpenHouseScheduleScreenState extends State<OpenHouseScheduleScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Open House Schedule",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: TabBar(
                labelColor: Colors.black,
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: 'Upcomming',
                  ),
                  Tab(
                    text: 'Upcomming',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height - 183,
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(
                    child: SizedBox(
                        height: 50,
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                            ),
                            onPressed: () {},
                            child: const Text('Button'),
                          ),
                        )
                        // OutlinedButton(
                        //   style: OutlinedButton.styleFrom(
                        //     textStyle: const TextStyle(color: Colors.white),
                        //     side: const BorderSide(color: Colors.black),
                        //     surfaceTintColor: Colors.white,
                        //     backgroundColor: Colors.blue,
                        //   ),
                        //   // backgroundColor: AppColor.primaryswatch),
                        //   onPressed: () {},
                        //   child: const Text(
                        //     'Button',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // ),
                        ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.open_in_browser,
                        color: Colors.black38,
                      ),
                      Text(
                          "Save open houses to help \n     plan your weekend."),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
