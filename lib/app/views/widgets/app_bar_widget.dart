import 'package:flutter/material.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/theme/theme_app.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.size,
    required this.pokemonModel,
  }) : super(key: key);

  final Size size;
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: size.width * .06,
          left: size.width * .06,
          right: size.width * .06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: size.width * .04),
              Text(
                pokemonModel.name,
                style: ThemeApp.textTitle.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            '#${pokemonModel.num}',
            style: ThemeApp.textNum,
          ),
        ],
      ),
    );
  }
}
