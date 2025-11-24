import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon_list/data/datasources/remote/pokemon_list_remote_datasource_impl.dart';
import 'package:pokedex/features/pokemon_list/data/repositories_imp/pokemon_list_repository_impl.dart';
import 'package:pokedex/features/pokemon_list/domain/entities/pokemon_list_preview_entity.dart';
import 'package:pokedex/features/pokemon_list/domain/usercases/get_paginated_pokemons_use_cases.dart';
import 'package:pokedex/features/pokemon_list/presentation/layouts/desktop_layout.dart';

void main() async {
  final datasource = PokemonsListRemoteDatasourceImpl();
  final repository = PokemonsListRepositoryImpl(datasource: datasource);
  final getPaginatedPokemonsUseCases = GetPaginatedPokemonsUseCases(
    repository: repository,
  );

  List<PokemonListPreviewEntity> pokemons = await getPaginatedPokemonsUseCases(
    20,
    0,
  );
  runApp(MyApp(pokemons: pokemons));
}

class MyApp extends StatelessWidget {
  List<PokemonListPreviewEntity> pokemons = [];

  MyApp({required this.pokemons, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.red,
        body: Center(
          child: DesktopLayout() /*ColumnExample(pokemons: pokemons)*/,
        ),
      ),
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
    );
  }
}
/*
class ColumnExample extends StatelessWidget {
  List<PokemonListPreviewEntity> pokemons = [];

  ColumnExample({required this.pokemons, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(87.0), //only
      child: Container(
        //sizedbox para contenedores de solo tamaño
        //cover box-fit
        color: const Color.fromARGB(255, 255, 191, 0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List<Image>.generate(pokemons.length, (i) {
                return Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${i + 1}.png',
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
*/