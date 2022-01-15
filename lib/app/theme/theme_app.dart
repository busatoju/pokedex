import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  static Color typeRock = const Color(0xFFB69E31);
  static Color typeGhost = const Color(0xFF70559B);
  static Color typeSteel = const Color(0xFFB7B9D0);
  static Color typeWater = const Color(0xFF6493EB);
  static Color typeGrass = const Color(0xFF74CB48);
  static Color typePhychic = const Color(0xFFFB5584);
  static Color typeIce = const Color(0xFF9AD6DF);
  static Color typeDark = const Color(0xFF75574C);
  static Color typeFairy = const Color(0xFFE69EAC);
  static Color typeNormal = const Color(0xFFAAA67F);
  static Color typeFighting = const Color(0xFFC12239);
  static Color typeFlying = const Color(0xFFA891EC);
  static Color typePoison = const Color(0xFFA43E9E);
  static Color typeGround = const Color(0xFFDEC16B);
  static Color typeBug = const Color(0xFFA7B723);
  static Color typeFire = const Color(0xFFF57D31);
  static Color typeEletric = const Color(0xFFF9CF30);
  static Color typeDragon = const Color(0xFF7037FF);

  static TextStyle textType = const TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.white,
  );
  static TextStyle textNum = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Colors.white,
  );

  static TextStyle textTitle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
  );

  static Color darkGray = const Color(0xFF212121);
  static Color mediumGray = const Color(0xFF666666);

  static Color? color({required String type}) {
    switch (type) {
      case 'Normal':
        return ThemeApp.typeNormal;
      case 'Fire':
        return ThemeApp.typeFire;
      case 'Water':
        return ThemeApp.typeWater;
      case 'Grass':
        return ThemeApp.typeGrass;
      case 'Electric':
        return ThemeApp.typeEletric;
      case 'Ice':
        return ThemeApp.typeIce;
      case 'Fighting':
        return ThemeApp.typeFighting;
      case 'Poison':
        return ThemeApp.typePoison;
      case 'Ground':
        return ThemeApp.typeGround;
      case 'Flying':
        return ThemeApp.typeFlying;
      case 'Psychic':
        return ThemeApp.typePhychic;
      case 'Bug':
        return ThemeApp.typeBug;
      case 'Rock':
        return ThemeApp.typeRock;
      case 'Ghost':
        return ThemeApp.typeGhost;
      case 'Dark':
        return ThemeApp.typeDark;
      case 'Dragon':
        return ThemeApp.typeDragon;
      case 'Steel':
        return ThemeApp.typeSteel;
      case 'Fairy':
        return ThemeApp.typeFairy;
      default:
        return Colors.grey;
    }
  }
}
