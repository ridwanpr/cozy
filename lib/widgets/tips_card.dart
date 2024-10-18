import 'package:cozy/model/tips.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({super.key, required this.tips});

  final Tips tips;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Updated at ${tips.updatedAt}',
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
