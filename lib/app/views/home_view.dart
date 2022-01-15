import 'package:flutter/material.dart';
import 'package:pokedex/app/controllers/pokemon_controller.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/repositories/pokemon_repository.dart';
import 'package:pokedex/app/services/dio_service.dart';
import 'package:pokedex/app/states/app_state.dart';
import 'package:pokedex/app/views/details_view.dart';
import 'package:pokedex/app/views/widgets/pokecard_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final PokemonController _controller =
      PokemonController(repository: PokemonRepository(service: DioService()));

  Widget child(Size size) {
    final state = _controller.value;
    final itemHeight = (size.height - kToolbarHeight - 22) / 3;
    final itemWidth = size.width / 2;

    if (state is SuccesAppState) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: itemWidth / itemHeight,
            ),
            itemCount: _controller.lenght,
            itemBuilder: (context, index) {
              return PokecardWidget(
                pokemonModel: _controller.pokemons[index],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        DetailsView(pokemonModel: _controller.pokemons[index]),
                  ),
                ),
              );
            }),
      );
    }
    if (state is ErrorAppState) {
      return Center(
        child: Text(state.message),
      );
    }
    if (state is LoadingAppState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder<List<PokemonModel>>(
          future: _controller.getPokemons(),
          builder: (context, _) {
            return child(size);
          }),
    );
  }
}
