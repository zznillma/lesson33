import 'package:flutter/material.dart';

class AcceptPoint extends StatelessWidget {
  final String name;
  final bool isAccetp;

  const AcceptPoint({
    super.key,
    required this.isAccetp,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 16),
        ),
        const Spacer(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: isAccetp ? Colors.green : Colors.grey,
              ),
              color: isAccetp ? Colors.green : const Color(0xffFFFFFF)),
          child: isAccetp
              ? const Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.check,
                  size: 20,
                  color: Color(0xffFFFFFF),
                ),
        )
      ],
    );
  }
}