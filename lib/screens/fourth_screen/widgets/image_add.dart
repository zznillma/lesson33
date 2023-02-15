import 'package:flutter/material.dart';

class ImagesAdd extends StatelessWidget {
  final String imageUrl;

  const ImagesAdd({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Image.asset('assets/images/add.png'),
    );
  }
}
