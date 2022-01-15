import 'package:flutter/material.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/theme/theme_app.dart';

class PokeTypeWidget extends StatelessWidget {
  const PokeTypeWidget({
    Key? key,
    required this.size,
    required this.pokemonModel,
  }) : super(key: key);

  final Size size;
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * .11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: pokemonModel.type
            .map(
              (e) => Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .02, vertical: size.height * .006),
                margin: EdgeInsets.only(right: size.width * .04),
                decoration: BoxDecoration(
                  color: ThemeApp.color(type: e),
                  borderRadius: BorderRadius.circular(size.width * .03),
                ),
                child: Text(
                  e,
                  style: ThemeApp.textType,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
