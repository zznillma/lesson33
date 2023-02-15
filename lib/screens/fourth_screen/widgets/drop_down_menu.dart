import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  final String title;
  final bool colorIcon;
  final bool colorBorder;

  const DropDownMenu({
    super.key,
    required this.title,
    required this.colorIcon,
    required this.colorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 327,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color:
                colorBorder ? const Color(0xffE3E5E5) : const Color(0xffF2F2F2),
          ),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffFFFFFF)),
      child: Row(
        children: [
          Container(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          colorIcon ? const TrueIconArrow() : const FalseIconArrow(),
          Container(width: 18),
        ],
      ),
    );
  }
}

class TrueIconArrow extends StatelessWidget {
  const TrueIconArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.keyboard_arrow_down_sharp,
      size: 30,
      color: Colors.green,
    );
  }
}

class FalseIconArrow extends StatelessWidget {
  const FalseIconArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.keyboard_arrow_down_sharp,
      size: 30,
      color: Color(0xffFFFFFF),
    );
  }
}