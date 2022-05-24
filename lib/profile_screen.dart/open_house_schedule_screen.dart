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
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          "Open House Schedule",
          style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 20),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TabBar(
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          controller: tabController,
          isScrollable: true,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          tabs: [
            Tab(
              child: Text(
                "Upcomming",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20),
              ),
            ),
            Tab(
              child: Text(
                "Past",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
