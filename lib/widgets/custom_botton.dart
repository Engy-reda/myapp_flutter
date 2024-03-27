import 'package:flutter/material.dart';

class CostomButton extends StatelessWidget {
  CostomButton({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 57, 141, 210)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        )),
      ),
    );
  }
}
