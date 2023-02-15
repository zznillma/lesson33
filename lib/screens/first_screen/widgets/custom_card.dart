import 'package:flutter/material.dart';
import 'package:lesson33/components/custom_button.dart';
import 'package:lesson33/components/kebabmenu.dart';

import '../../../components/status_row.dart';

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
        top: 20,
        left: 24,
        right: 24,
        bottom: 20,
      ),
      // height: 272,
      // width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Заявка',
                  style: TextStyle(color: Colors.green),
                ),
                Container(width: 5),
                Text('№$requestNum'),
                Container(width: 24),
                Text(date),
                const Spacer(),
                kebabmenu()
              ],
            ),
            Container(height: 14),
            Row(
              children: [
                Container(
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(height: 3),
                      Text(
                        '$model/ $mark/ $detail',
                        style: const TextStyle(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(height: 23),
            Row(
              children: [
                const Expanded(
                  flex: 10,
                  child: CustomMainCard(
                    name: 'Количество (шт ):',
                    value: '1',
                  ),
                ),
                Container(width: 10),
                const Expanded(
                  flex: 9,
                  child: CustomMainCard(
                    name: 'Предложения:',
                    value: '3',
                  ),
                ),
              ],
            ),
            Container(height: 10),
            Row(
              children: [
                const Expanded(
                  flex: 10,
                  child: CustomMainCard(
                    name: 'Актуальность (дни):',
                    value: '3',
                  ),
                ),
                Container(width: 10),
                const Expanded(
                  flex: 9,
                  child: CustomMainCard(
                    name: 'Сообщения:',
                    value: '6',
                  ),
                ),
              ],
            ),
            Container(height: 33),
            CustomButton(
              title: 'Сообшение',
              onTap: () {},
              withOpacity: false,
            )
          ],
        ),
      ),
    );
  }
}

