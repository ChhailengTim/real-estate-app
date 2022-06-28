import 'package:flutter/material.dart';

class FreeClassScreen extends StatelessWidget {
  const FreeClassScreen({Key? key}) : super(key: key);

  Widget customText({String? title, subtext}) {
    return Column(
      children: [
        Text(
          title ?? "",
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
        ),
        Text(subtext ?? ""),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //final DropdownMenuItem = Get.put(Artical);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Free Real Estate"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.calendar_month,
                size: 150,
              ),
              Column(children: const [
                Text("Home Selling Webinar"),
                Text("In Seattle at Your Computer, 6:30 PM (hr) "),
              ]),
            ],
          ),
          Container(
            width: double.infinity,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(3),
              //border: Border.all(color: Colors.black, width: 3),
            ),
            child: const Text(
              "Register Now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          customText(
              title: "Learn how to buy or sell in your market",
              subtext:
                  "Looking to buy in a hot market like New York, Denver,or Portland? Or do you have a home to sell in Phoenix, Las Vegas, or Fort Lauderdale? Whatever your situation and challenges, our real estate classes can give you the tools to navigate your buying or selling journey."),
          customText(
              title: "Talk to a local Redfin Agent",
              subtext: "We're here to help seven days a week."),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Where are you searching for homes?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'City, Agent, ZIP',
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1.0),
                    ),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  suffixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          customText(
              title: "Free Classe",
              subtext:
                  "Whether you're interested in a real estate job at Redfin or want to master the basic of buying or selling a home, free Redfin real estate classes and events are a greate way to get started."),
          customText(
              title: "Taught by Local Experts",
              subtext:
                  "Our Redfin experts are available to answer all of your questions and share their knowledge of top real estate topics and trends, including the tupes of mortgage loans that are available, and how to get pre-approved."),
          customText(
              title: "Winning Strategies",
              subtext:
                  "Other popular classes include the best startegies for buying in a competitive housing market , and important tactics fro selling your home for top dollar. Our free classes are also a great way to get acquainted with Redfin, a next-generation brokerage that's redefining real estate in the consumer's favor."),
        ],
      ),
    );
  }
}