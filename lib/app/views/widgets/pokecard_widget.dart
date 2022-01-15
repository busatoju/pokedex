import 'package:flutter/material.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/theme/theme_app.dart';
import 'package:shimmer/shimmer.dart';

class PokecardWidget extends StatelessWidget {
  final PokemonModel pokemonModel;
  final VoidCallback onTap;

  const PokecardWidget({
    Key? key,
    required this.pokemonModel,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: pokemonModel.baseColor!,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buildNum(),
            Image.network(pokemonModel.img),
            buildName(),
          ],
        ),
      ),
    );
  }

  Container buildName() {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: pokemonModel.baseColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(26),
          bottomRight: Radius.circular(26),
        ),
      ),
      child: Text(
        pokemonModel.name,
        style: ThemeApp.textTitle,
      ),
    );
  }

  Align buildNum() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Text(
          '#${pokemonModel.num}',
          style: ThemeApp.textNum.copyWith(color: pokemonModel.baseColor),
        ),
      ),
    );
  }
}
