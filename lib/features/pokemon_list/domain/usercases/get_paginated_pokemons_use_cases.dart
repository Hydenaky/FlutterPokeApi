import 'package:pokedex/features/pokemon_list/domain/repositories/pokemons_list_repository.dart';

class GetPaginatedPokemonsUseCases {
  GetPaginatedPokemonsUseCases({required this.repository});

  final PokemonsListRepository repository;

  Future getPaginatedPokemons(int pageIndex, int pageSize) =>
      repository.getPaginatedPokemons(pageIndex, pageSize);
}