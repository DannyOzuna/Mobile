import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.boldText, required this.text})
      : super(key: key);
  final String boldText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Color(0xFF161618),
        ),
        children: <TextSpan>[
          TextSpan(
            text: this.boldText,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(text: this.text),
        ],
      ),
      softWrap: true,
    );
  }
}
