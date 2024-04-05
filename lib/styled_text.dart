import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outPutText, {super.key});

  final String outPutText;

  @override
  Widget build(context) {
    return Text(
      outPutText,
      style: const TextStyle(
          color: Colors.white
      ),
    );
  }
}
