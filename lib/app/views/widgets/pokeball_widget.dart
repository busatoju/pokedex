import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PokeballWidget extends StatelessWidget {
  const PokeballWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: SvgPicture.asset(
        'assets/Pokeball.svg',
        height: size.height * .32,
        width: size.width * .60,
        color: Colors.white70.withOpacity(0.2),
      ),
    );
  }
}
