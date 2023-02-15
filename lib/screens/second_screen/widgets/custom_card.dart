import 'package:flutter/material.dart';
import 'package:lesson33/components/kebabmenu.dart';
import 'package:lesson33/components/status_row.dart';

class CustomCard extends StatelessWidget {
  final int requestNum;
  final String date;
  final String? imageUrl;
  final String title;
  final String model;
  final String mark;
  final String detail;

  const CustomCard({
    super.key,
    required this.requestNum,
    required this.date,
    this.imageUrl,
    required this.title,
    required this.model,
    required this.mark,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 27,
        bottom: 21,
        top: 22,
      ),
      height: 204,
      width: 343,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
            color: Colors.grey,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Заявка',
                style: TextStyle(color: Colors.green),
              ),
              Container(width: 5.5),
              Text(
                '№$requestNum',
                style: const TextStyle(
                  color: Color(0xff828282),
                ),
              ),
              Container(width: 26),
              Text(
                date,
                style: const TextStyle(
                  color: Color(0xff828282),
                ),
              ),
              const Spacer(),
              kebabmenu()
            ],
          ),
          Container(height: 14),
          Row(
            children: [
              SizedBox(
                height: 56,
                width: 56,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl ??
                        'https://img5.goodfon.ru/wallpaper/nbig/3/73/abstraktsiia-antisfera-vodovorot-krasok-kartinka-chernyi-fon.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(height: 5),
                  Text(
                    '$model/ $mark/ $detail',
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(height: 18),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    const Text(''),
                    Container(height: 13),
                    const Text(
                      'Папка 1',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    CustomMainCard(
                      name: 'Актуальность (дни):',
                      value: 4.toString(),
                    ),
                    Container(height: 13),
                    CustomMainCard(
                      name: 'Количество (шт):',
                      value: 2.toString(),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
