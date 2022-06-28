// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:loygo_real_estate/util/function/api_base_helper.dart';
// import 'package:http/http.dart' as http;

// class LoginController extends GetxController {
//   final username = TextEditingController().obs;
//   final numb = 0.obs;
//   final text = ''.obs;
//   // final user

//   final apibasehelper = ApiBaseHelper();

//   Future getUser() async {
//     http.get(Uri.parse('http://localhost:4040/'))
//         // .get(Uri.parse('https://amingproperty.com/system/clinic/api/book.php'))
//         .then((value) {
//       String name = value.body;
//       debugPrint(name);
//       username.value.text = name;
//       debugPrint(name);
//       update();
//     });
//     // await apibasehelper
//     //     .onNetworkRequesting(url: '', methode: METHODE.get, isAuthorize: false)
//     //     .then((value) {
//     //   debugPrint('$value');
//     //   // username.text = value;
//     // }).onError((error, stackTrace) {});
//   }
// }