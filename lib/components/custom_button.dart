
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool withOpacity;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.withOpacity = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: withOpacity ? Color(0xffF4FAF6) : Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          foregroundColor: withOpacity ? Colors.green : Colors.white
        ),
        onPressed: () {},
        
        child: Text(title),
      ),
    );
  }
}
