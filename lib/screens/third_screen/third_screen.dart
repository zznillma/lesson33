import 'package:flutter/material.dart';
import 'package:lesson33/screens/third_screen/widgets/custom_card3.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Заявка №12345644',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
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
      body: Column(
        children: const [
          CustomCard3(
            date: '25.10.2022',
            title: 'Гусеница в сборе',
            model: 'SHANTU',
            mark: 'Бульдозер',
            detail: 'Ходовка',
            isDelivery: false,
          )
        ],
      ),
    );
  }
}