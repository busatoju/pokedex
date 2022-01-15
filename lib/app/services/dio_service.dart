import 'package:dio/dio.dart';
import 'package:pokedex/app/services/service.dart';

const url =
    'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

class DioService implements IService {
  final dio = Dio();

  @override
  Future<dynamic> getService() async {
    try {
      return await dio.get(url);
    } on DioError catch (e) {
      return e.message;
    }
  }
}
