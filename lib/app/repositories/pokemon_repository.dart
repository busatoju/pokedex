import 'dart:convert';
import 'package:pokedex/app/models/pokemon_model.dart';
import 'package:pokedex/app/services/service.dart';

abstract class IPokemonRepository {
  Future<List<PokemonModel>> getPokemons();
}

class PokemonRepository implements IPokemonRepository {
  final IService service;

  PokemonRepository({
    required this.service,
  });

  @override
  Future<List<PokemonModel>> getPokemons() async {
    try {
      final response = await service.getService();
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final list = json['pokemon'] as List<dynamic>;

      return list.map((e) => PokemonModel.fromMap(e)).toList();
    } catch (e) {
      throw 'Ocorreu um erro: ${e.toString()}';
    }
  }
}
