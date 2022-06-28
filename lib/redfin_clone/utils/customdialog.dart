import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static button({
    required bool? value,
    required ValueChanged<bool>? onChanged,
  }) {
    return Platform.isMacOS || Platform.isIOS
        ? CupertinoSwitch(
            value: value!,
            onChanged: onChanged,
          )
        : Switch(
            value: value!,
            onChanged: onChanged,
          );
  }
}