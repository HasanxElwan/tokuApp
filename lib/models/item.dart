import 'package:flutter/material.dart';

class Item {
  final String? image;
  final String jaName;
  final String enName;
  final String sound;

  const Item(
      {@required this.image,
      required this.jaName,
      required this.enName,
      required this.sound});
}
