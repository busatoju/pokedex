import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/app/services/dio_service.dart';

void main() {
  test('Deve retornar json', () async {
    final service = DioService();
    final response = await service.getService();
  });
}
