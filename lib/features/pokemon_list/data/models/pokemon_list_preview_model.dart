import 'package:pokedex/features/pokemon_list/domain/entities/pokemon_list_preview_entity.dart';

class PokemonListPreviewModel {
  //Comunication
  List<PokemonListPreviewEntity> fromJson({
    required Map<String, dynamic> data,
  }) {
    final list = data['results'] as List;

    return list
        .map(
          (item) =>
              PokemonListPreviewEntity(name: item['name'], url: item['url']),
        )
        .toList();
  }
}