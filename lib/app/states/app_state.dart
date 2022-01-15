import 'package:pokedex/app/models/pokemon_model.dart';

abstract class AppState {}

class SuccesAppState extends AppState {
  final List<PokemonModel> pokemons;

  SuccesAppState({
    required this.pokemons,
  });
}

class ErrorAppState extends AppState {
  final String message;

  ErrorAppState({
    required this.message,
  });
}

class LoadingAppState extends AppState {}

class InitialAppState extends AppState {}
