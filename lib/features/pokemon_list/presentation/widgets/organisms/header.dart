import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Text('PokeApi', style: TextStyle(fontSize: 70, color: Colors.red)),
    );
  }
}
