import 'package:flutter/material.dart';
import 'package:lesson33/components/custom_button.dart';
import 'package:lesson33/screens/fourth_screen/widgets/accept_point.dart';
import 'package:lesson33/screens/fourth_screen/widgets/drop_down_menu.dart';
import 'package:lesson33/screens/fourth_screen/widgets/image_add.dart';

class CustomCard4 extends StatelessWidget {
  const CustomCard4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 327,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Авто',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(width: 5),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.green,
                    ),
                    child: const Text(
                      'Спецтехника',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(height: 32),
        const DropDownMenu(
          title: 'Выбрать технику',
          colorIcon: true,
          colorBorder: false,
        ),
        Container(height: 16),
        const DropDownMenu(
          title: 'Тип запчасти',
          colorIcon: true,
          colorBorder: false,
        ),
        Container(height: 16),
        const DropDownMenu(
          title: 'Название / каталожный номер',
          colorIcon: false,
          colorBorder: true,
        ),
        Container(height: 16),
        const Text(
          'Дополнительная информация',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(height: 12),
        Container(
          height: 96,
          width: 326,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: const Color(
                0xffE3E5E5,
              ),
            ),
          ),
        ),
        Container(height: 24),
        Row(
          children: [
            const Expanded(
              flex: 3,
              child: DropDownMenu(
                title: 'Шт',
                colorIcon: false,
                colorBorder: false,
              ),
            ),
            Container(width: 24),
            const Expanded(
              flex: 6,
              child: DropDownMenu(
                title: 'Основная группа',
                colorIcon: true,
                colorBorder: false,
              ),
            ),
          ],
        ),
        Container(height: 52),
        const AcceptPoint(
          name: 'Включить доставку в цену',
          isAccetp: true,
        ),
        Container(height: 28),
        const DropDownMenu(
          title: 'Способ доставки',
          colorIcon: true,
          colorBorder: false,
        ),
        Container(height: 16),
        const DropDownMenu(
          title: 'Место получения',
          colorIcon: true,
          colorBorder: false,
        ),
        Container(height: 31),
        const AcceptPoint(
          isAccetp: false,
          name: 'Искать только в моем городе',
        ),
        Container(height: 28),
        const DropDownMenu(
          title: 'Тип запчасти',
          colorIcon: true,
          colorBorder: false,
        ),
        Container(height: 32),
        Row(
          children: [
            const ImagesAdd(
              imageUrl: '',
            ),
          ],
        ),
        Container(height: 63),
        CustomButton(
          title: 'Разместить заявку',
          onTap: () {},
          withOpacity: false,
        ),
      ],
    );
  }
}
