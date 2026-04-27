import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  final Color col;
  final String name;
  final Widget conicon;
  const IconsContainer({
    super.key,
    required this.col,
    required this.name,
    required this.conicon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 130,
        width: 110,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //icon
              conicon,
              //text
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
