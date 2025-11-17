import 'package:dio/dio.dart';
import 'package:pokedex/features/pokemon_list/data/datasources/pokemons_list_datasource.dart';

class PokemonsListRemoteDatasourceImpl extends ApiService
    implements PokemonsListDatasource {
  //fetch() async => await dio.get('https://pokeapi.co/api/v2/pokemon');

  //Se sobre escribe xq este es para calls remotos
  @override
  Future<Response<dynamic>> getPaginatedPokemons(int pageIndex, int pageSize) {
    try {
      return dio.get(
        "https://pokeapi.co/api/v2/pokemon/?limit=$pageIndex&offset=$pageSize",
      );
    } catch (e) {
      rethrow;
    }
  }
}

class ApiService {
  final dio = Dio();
}
