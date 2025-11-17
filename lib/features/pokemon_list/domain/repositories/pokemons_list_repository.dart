abstract class PokemonsListRepository {
  Future<dynamic> getPaginatedPokemons(int pageIndex, int pageSize);
}