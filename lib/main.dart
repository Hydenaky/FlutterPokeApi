import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon_list/data/datasources/remote/pokemon_list_remote_datasource_impl.dart';
import 'package:pokedex/features/pokemon_list/data/repositories_imp/pokemon_list_repository_impl.dart';
import 'package:pokedex/features/pokemon_list/domain/entities/pokemon_list_preview_entity.dart';
import 'package:pokedex/features/pokemon_list/domain/usercases/get_paginated_pokemons_use_cases.dart';

void main() async {
  final datasource = PokemonsListRemoteDatasourceImpl();
  final repository = PokemonsListRepositoryImpl(datasource: datasource);
  final usecase = GetPaginatedPokemonsUseCases(repository: repository);

  List<PokemonListPreviewEntity> pokemons = await usecase.getPaginatedPokemons(20, 0);
  print('pokemons from main ${pokemons[0].name}');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
    );
  }
}
