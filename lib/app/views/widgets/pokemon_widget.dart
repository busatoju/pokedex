import 'package:flutter/material.dart';
import 'package:pokedex/app/models/pokemon_model.dart';

class PokemonWidget extends StatelessWidget {
  const PokemonWidget({
    Key? key,
    required this.size,
    required this.pokemonModel,
  }) : super(key: key);

  final Size size;
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * .12,
      left: size.width * .23,
      child: Container(
        width: size.width * .57,
        height: size.height * .31,
        decoration: BoxDecoration(
          image: DecorationImage(
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            image: NetworkImage(pokemonModel.img),
          ),
        ),
      ),
    );
  }
}

