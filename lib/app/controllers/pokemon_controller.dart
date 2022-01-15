import 'package:flutter/cupertino.dart';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/repositories/pokemon_repository.dart';
import 'package:pokedex/app/states/app_state.dart';

class PokemonController extends ValueNotifier<AppState> {
  final PokemonRepository repository;
  List<NextEvolution> nextEvolutions = [];
  List<PokemonModel> pokemons = [];

  int get lenght => pokemons.length;

  PokemonController({
    required this.repository,
  }) : super(InitialAppState());

  Future<List<PokemonModel>> getPokemons() async {
    value = LoadingAppState();
    try {
      pokemons = await repository.getPokemons();
      value = SuccesAppState(pokemons: pokemons);

      return pokemons;
    } catch (e) {
      value = ErrorAppState(message: e.toString());
      throw 'Ocorreu um erro: ${e.toString()}';
    }
  }
}
