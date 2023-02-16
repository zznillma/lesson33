import 'package:flutter/material.dart';
import 'package:lesson33/screens/fourth_screen/widgets/custom_card4.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Новая заявка',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/222.png'),
          ),
          Container(width: 20),
          Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/111.png'),
          ),
          Container(width: 20),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
          bottom: 96,
        ),
        children: const [
          CustomCard4()
        ],
      ),
    );
  }
}

