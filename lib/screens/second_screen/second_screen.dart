import 'package:flutter/material.dart';
import 'package:lesson33/screens/fourth_screen/fourth_screen.dart';
import 'package:lesson33/screens/second_screen/widgets/custom_card.dart';
import 'package:lesson33/screens/second_screen/widgets/custom_card2.dart';
import 'package:lesson33/screens/third_screen/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashRadius: 20,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Предложения',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
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
          Container(width: 20),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 50,
        ),
        children: [
          Container(height: 24),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ThirdScreen(),
                ),
              );
            },
            child: const CustomCard(
              requestNum: 123412,
              date: '24.12.2022',
              title: 'Kолеса',
              model: 'Subaru',
              mark: 'Forester',
              detail: 'ходовка',
            ),
          ),
          Container(height: 32),
          Row(
            children: [
              const Text(
                'Предложения продавцов',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(width: 12),
              Container(
                alignment: Alignment.center,
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.green,
                ),
                child: const Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Container(height: 24),
          const CustomCard2(
            requestNum: 56283,
            date: '22.08.2021',
            title: 'Гусеница в сборе',
            model: 'SHANTU',
            mark: 'Бульдозер',
            detail: 'Ходовка',
            price: 3200,
            inStock: true,
            raiting: 2.9,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FourthScreen(),
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
