import 'package:flutter/material.dart';

class GenericContainer extends StatelessWidget {
  const GenericContainer({
    required this.contentWidget,
    this.color = const Color.fromARGB(255, 17, 19, 40),
  });

  final Widget contentWidget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: contentWidget,
    );
  }
}
