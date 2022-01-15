import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex/app/theme/theme_app.dart';

class ItemInfoWidget extends StatelessWidget {
  const ItemInfoWidget.height({
    Key? key,
    required this.size,
    this.title = 'Height',
    this.icon = 'assets/icons/scale.svg',
    required this.info,
  }) : super(key: key);

  const ItemInfoWidget.weight({
    Key? key,
    required this.size,
    this.title = 'Weight',
    this.icon = 'assets/icons/balance.svg',
    required this.info,
  }) : super(key: key);

  final Size size;
  final String title;
  final String icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              icon,
              width: size.width * .04,
              height: size.height * .04,
            ),
            SizedBox(width: size.width * .02),
            Text(
              info,
              style: ThemeApp.textNum.copyWith(
                color: ThemeApp.darkGray,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * .01),
        Text(
          title,
          style: ThemeApp.textNum.copyWith(
            color: ThemeApp.mediumGray,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
