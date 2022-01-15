import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/theme/theme_app.dart';
import 'package:pokedex/app/views/widgets/poketype_widget.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/item_info_widget.dart';
import 'widgets/pokeball_widget.dart';
import 'widgets/pokemon_widget.dart';

class DetailsView extends StatelessWidget {
  final PokemonModel pokemonModel;

  const DetailsView({
    Key? key,
    required this.pokemonModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pokemonModel.baseColor,
      body: SafeArea(
        child: Stack(
          children: [
            AppBarWidget(size: size, pokemonModel: pokemonModel),
            PokeballWidget(size: size),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * .006),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * .64,
                  width: size.width * .97,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      PokeTypeWidget(size: size, pokemonModel: pokemonModel),
                      SizedBox(height: size.height * .025),
                      Text(
                        'About',
                        style: ThemeApp.textTitle.copyWith(
                            color: pokemonModel.baseColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: size.height * .025),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .13),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemInfoWidget.weight(
                                  size: size, info: pokemonModel.weight),
                              ItemInfoWidget.height(
                                  size: size, info: pokemonModel.height),
                            ]),
                      ),
                      SizedBox(height: size.height * .025),
                      Text('Weaknesses',
                          style: ThemeApp.textTitle.copyWith(
                              color: pokemonModel.baseColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(height: size.height * .025),  
                      Column(
                        children: pokemonModel.weaknesses
                            .map((e) => Text(
                                  e,
                                  style: ThemeApp.textType.copyWith(
                                      color: ThemeApp.darkGray, fontSize: 18),
                                ))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
            PokemonWidget(size: size, pokemonModel: pokemonModel),
          ],
        ),
      ),
    );
  }
}
