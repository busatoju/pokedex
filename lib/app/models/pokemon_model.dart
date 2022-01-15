import 'package:flutter/material.dart';
import 'package:pokedex/app/theme/theme_app.dart';

class PokemonModel {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;

  final List<String> weaknesses;
  final List<NextEvolution>? nextEvolution;

  PokemonModel({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.weaknesses,
    this.nextEvolution,
  });

  String getEvolution(String num) {
    return 'http://www.serebii.net/pokemongo/pokemon/$num.png';
  }

  Color? get baseColor => ThemeApp.color(type: type[0]);

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id']?.toInt() ?? 0,
      num: map['num'] ?? '',
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      type: List<String>.from(map['type']),
      height: map['height'] ?? '',
      weight: map['weight'] ?? '',
      weaknesses: List<String>.from(map['weaknesses']),
      nextEvolution: map['nextEvolution'] != null
          ? List<NextEvolution>.from(
              map['nextEvolution'].map(NextEvolution.fromMap))
          : [],
    );
  }

  @override
  String toString() {
    return 'PokemonModel(id: $id, num: $num, name: $name, img: $img, type: $type, height: $height, weight: $weight, weaknesses: $weaknesses)';
  }
}

class NextEvolution {
  String num;
  String name;

  NextEvolution({
    required this.num,
    required this.name,
  });

  factory NextEvolution.fromMap(dynamic map) {
    return NextEvolution(
      num: map['num'],
      name: map['name'],
    );
  }
}
