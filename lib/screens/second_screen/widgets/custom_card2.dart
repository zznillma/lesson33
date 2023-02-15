import 'package:flutter/material.dart';
import 'package:lesson33/components/custom_button.dart';
import 'package:lesson33/components/kebabmenu.dart';
import 'package:lesson33/components/status_row.dart';

class CustomCard2 extends StatelessWidget {
  final int requestNum;
  final String date;
  final String title;
  final String model;
  final String mark;
  final String detail;
  final String? imageUrl;
  final int price;
  final bool inStock;
  final double raiting;

  const CustomCard2({
    super.key,
    required this.requestNum,
    required this.date,
    required this.title,
    required this.model,
    required this.mark,
    required this.detail,
    required this.price,
    required this.inStock,
    this.imageUrl,
    required this.raiting,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 508,
      width: 343,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 2,
            color: Colors.grey,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 28,
          left: 24,
          right: 24,
          bottom: 24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Предложение',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                Container(width: 6),
                Text(
                  '$requestNum',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Container(width: 42),
                Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                kebabmenu()
              ],
            ),
            Container(height: 20),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(height: 5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '$model/ $mark/ $detail',
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            Container(height: 16),
            Row(
              children: [
                SizedBox(
                  height: 72,
                  width: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imageUrl ??
                          'https://img5.goodfon.ru/wallpaper/nbig/3/73/abstraktsiia-antisfera-vodovorot-krasok-kartinka-chernyi-fon.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(width: 72),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$price ₽',
                      style: const TextStyle(
                        fontSize: 18,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Container(height: 5),
                    Row(
                      children: [
                        Text(
                          '${price - 1000} ₽',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(width: 10),
                        const Text(
                          'с НДС',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(height: 5),
                    StockWidget(isStock: inStock)
                  ],
                )
              ],
            ),
            Container(height: 24),
            SizedBox(
              height: 112,
              width: 293,
              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                    height: 0.5,
                    width: 290,
                    color: Colors.green[300],
                  ),
                  Container(height: 18),
                  const CustomMainCard(
                    name: 'Доставка:',
                    value: 'Включено в стоимость',
                  ),
                  Container(height: 8),
                  const CustomMainCard(
                    name: 'Доступное количество',
                    value: '2(шт)',
                  ),
                  Container(height: 8),
                  const CustomMainCard(
                    name: 'Склад:',
                    value: 'Якутск',
                  ),
                  Container(height: 26),
                  Container(
                    height: 0.5,
                    width: 293,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            Container(height: 26),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://static.rfstat.com/logo-presets/2648/thumbnail_10ea11e15150_1x.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(width: 12),
                const Expanded(
                  child: Text(
                    'ООО Чиню быстро и1232132132131232131',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(width: 16),
                Container(
                  height: 26,
                  width: 66,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4FAF6),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      ),
                      Container(width: 7),
                      Text('$raiting'),
                    ],
                  ),
                )
              ],
            ),
            Container(height: 26),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    title: 'Сообщение',
                    onTap: () {},
                    withOpacity: true,
                  ),
                ),
                Container(width: 20),
                Expanded(
                  child: CustomButton(
                    title: 'Выбрать',
                    onTap: () {},
                    withOpacity: false,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StockWidget extends StatelessWidget {
  final bool isStock;

  const StockWidget({
    super.key,
    this.isStock = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: isStock ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Text(
          isStock ? 'В наличии' : "Нет в наличии",
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
