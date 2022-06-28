import 'package:flutter/material.dart';
import 'package:real_estate_app/redfin_clone/utils/custombutton.dart';
import 'package:real_estate_app/redfin_clone/utils/customtextformfield.dart';
import 'package:real_estate_app/screens/login_screen.dart';

class ConfrimPassword extends StatelessWidget {
  const ConfrimPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirm Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Create new password",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Set the new password for your account so you can login and access all the features",
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              label: 'New password',
              hintText: '************',
              padding: EdgeInsets.zero,
              onChanged: (v) {},
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormField(
              label: 'Confirm password',
              hintText: '************',
              padding: EdgeInsets.zero,
              onChanged: (v) {},
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    text: "Confirm",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
