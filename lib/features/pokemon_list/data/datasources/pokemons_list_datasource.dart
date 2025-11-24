import 'package:dio/dio.dart';

abstract class PokemonsListDatasource {
  Future<Response<dynamic>> getPaginatedPokemons(int pageIndex, int pageSize);
}