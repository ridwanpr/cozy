import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/tips1.png',
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'City Guidelines',
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated 20 Apr',
              style: greyTextStyle,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            size: 24,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
