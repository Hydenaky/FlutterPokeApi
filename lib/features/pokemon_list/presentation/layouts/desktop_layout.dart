import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon_list/presentation/widgets/organisms/body.dart';
import 'package:pokedex/features/pokemon_list/presentation/widgets/organisms/header.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Header(), Body()]);
  }
}
