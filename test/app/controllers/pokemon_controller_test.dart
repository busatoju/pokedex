import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/controllers/pokemon_controller.dart';
import 'package:pokedex/app/repositories/pokemon_repository.dart';
import 'package:pokedex/app/services/dio_service.dart';

void main() {
  final controller = PokemonController(
    repository: PokemonRepository(
      service: DioService(),
    ),
  );
  test('Deve retornar lista de Pokemons', () async {
    final response = await controller.getPokemons();
    expect(response[0].name, 'Bulbasaur');
  });
}
