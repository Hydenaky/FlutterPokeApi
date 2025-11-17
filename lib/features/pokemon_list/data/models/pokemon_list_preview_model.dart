import 'package:dio/dio.dart';

class PokemonListPreviewModel {
  //Comunication
  dynamic fromJson(Response<dynamic> response) {
    //response.data['results']['name'];
    return response.data['results'];
  }
}
