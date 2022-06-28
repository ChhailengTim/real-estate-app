import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:real_estate_app/redfin_clone/utils/app_color.dart';

import '../controller/finance_controller.dart';
import '../model/payment.dart';

class PaymentCalculatorScreen extends StatelessWidget {
  const PaymentCalculatorScreen({Key? key}) : super(key: key);

  Widget showBar(
      {@required double? width,
      double? height,
      @required List<PaymentModel>? ilist,
      @required double? totalAmount}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: ilist!
            .map(
              (e) => AnimatedContainer(
                height: height,
                width: (width! - 80) * (e.amount! / totalAmount!),
                duration: const Duration(milliseconds: 200),
                color: e.color,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget itemDetail({
    Color? color,
    double? radius,
    String? text,
    double? amount,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: radius ?? 5,
          backgroundColor: color,
        ),
        const SizedBox(width: 20),
        Text(
          text ?? '',
          style: const TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
        const Spacer(),
        Text(
          '\$${amount ?? ''}',
          style: const TextStyle(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final financeController = Get.put(FinanceController());
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Calculator"),
      ),
      body: Obx(
        () => Container(
          // color: AppColor.primary,
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Mortgage Calculator",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 30,
                    ),
              ),
              Text(
                "Estimate your mortgage payment. including the principal and interest, taxes, insurance, HOA, and PMI. Add your locatino for more accurate estimates.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 15,
                      height: 1.5,
                    ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                // height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 0.2,
                        blurRadius: 6,
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$${financeController.mynum.value} per month',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                        '\$${financeController.mynum.value} Year Fixed, 4.000% Interest'),
                    const SizedBox(
                      height: 20,
                    ),
                    showBar(
                      totalAmount: 1000,
                      ilist: paymentItemList,
                      width: width,
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: paymentItemList
                          .asMap()
                          .entries
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: e.key == paymentItemList.length - 1
                                        ? 0
                                        : 15),
                                child: itemDetail(
                                  color: e.value.color,
                                  radius: 10,
                                  text: e.value.title,
                                  amount: e.value.amount,
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: financeController.listBottom
              .asMap()
              .entries
              .map(
                (e) => GestureDetector(
                  onTap: () {},
                  child: Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            e.value.icon,
                            color: AppColor.primary,
                          ),
                          Text(e.value.title ?? '')
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
