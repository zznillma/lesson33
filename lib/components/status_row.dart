import 'package:flutter/material.dart';

class CustomMainCard extends StatelessWidget {
  final String name;
  final String value;

  const CustomMainCard({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        Text(value),
      ],
    );
  }
}
