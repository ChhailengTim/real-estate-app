import 'package:get/get.dart';

class SliderController extends GetxController {
  Rx<double> range = 1.0.obs;

  void setRange(double range) {
    this.range.value = range;
  }
}