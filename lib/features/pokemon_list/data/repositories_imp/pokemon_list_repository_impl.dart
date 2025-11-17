import 'package:pokedex/features/pokemon_list/data/datasources/pokemons_list_datasource.dart';
import 'package:pokedex/features/pokemon_list/data/models/pokemon_list_preview_model.dart';
import 'package:pokedex/features/pokemon_list/domain/entities/pokemon_list_preview_entity.dart';
import 'package:pokedex/features/pokemon_list/domain/repositories/pokemons_list_repository.dart';

class PokemonsListRepositoryImpl implements PokemonsListRepository {
  PokemonsListRepositoryImpl({required this.datasource});

  final PokemonsListDatasource datasource;

  @override
  Future<List<PokemonListPreviewEntity>> getPaginatedPokemons(int pageIndex, int pageSize) async {
    var model = PokemonListPreviewModel().fromJson(
      await datasource.getPaginatedPokemons(pageIndex, pageSize),
    );
    List<PokemonListPreviewEntity> listOfPokemonListPreviewEntity = [];
    for (var e in model) {
      listOfPokemonListPreviewEntity.add(
        PokemonListPreviewEntity(name: e['name'], url: e['url']),
      );
    }
    return listOfPokemonListPreviewEntity;
  }
}
