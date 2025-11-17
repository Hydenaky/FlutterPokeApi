abstract class PokemonsListDatasource {
  Future<dynamic> getPaginatedPokemons(int pageIndex, int pageSize);
}