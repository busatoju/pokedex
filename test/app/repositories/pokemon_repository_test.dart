import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/repositories/pokemon_repository.dart';
import 'package:pokedex/app/services/dio_service.dart';

void main() {
  test('Deve retornar uma lista de pokemons', () async {
    final repository = PokemonRepository(service: DioService());
    final response = await repository.getPokemons();

    expect(response[0].name, 'Bulbasaur');
  });
}
