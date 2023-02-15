import 'package:flutter/material.dart';
import 'package:lesson33/screens/first_screen/widgets/custom_card.dart';
import 'package:lesson33/screens/second_screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Папка 2',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            child: Image.asset('assets/images/333.png'),
          ),
          Container(width: 20),
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
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(height: 64),
          const CustomCard(
            requestNum: 412651,
            date: '25.10.2021',
            title: 'Гусеница в сборе',
            model: 'Howo',
            mark: 'Самосвал',
            detail: 'Ходовка',
          ),
          Container(height: 41),
          const CustomCard(
            requestNum: 4126512,
            date: '25.10.2021',
            title: 'Форсунка Borsh',
            model: 'Toyota',
            mark: 'Land Cruiser Prado',
            detail: 'Топливная система',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
