import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final GestureTapCallback? onTap;
  final IconData? icon;
  final String? text;
  final String? label;

  const CustomTile({
    Key? key,
    this.onTap,
    this.icon,
    this.text,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Text(
            text ?? "",
            style: const TextStyle(fontFamily: 'sf_pro_meduim'),
          ),
        ],
      ),
    );
  }
}