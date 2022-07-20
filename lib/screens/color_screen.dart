import 'package:flutter/material.dart';
import 'package:toku/components/items_list.dart';
import 'package:toku/models/item.dart';

// ignore: camel_case_types
class Color_page extends StatelessWidget {
  const Color_page({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/colors/color_black.png',
        jaName: 'Kuro',
        enName: 'Black',
        sound: 'black.wav'),
    Item(
        image: 'assets/images/colors/color_brown.png',
        jaName: 'Chairo',
        enName: 'Brown',
        sound: 'brown.wav'),
    Item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jaName: 'Hokori ppoi kiiro',
        enName: 'Dusty Yellow',
        sound: 'dusty_yellow.wav'),
    Item(
        image: 'assets/images/colors/color_gray.png',
        jaName: 'Gurē',
        enName: 'Gray',
        sound: 'gray.wav'),
    Item(
        image: 'assets/images/colors/color_green.png',
        jaName: 'Midori',
        enName: 'Green',
        sound: 'green.wav'),
    Item(
        image: 'assets/images/colors/color_red.png',
        jaName: 'Aka',
        enName: 'Red',
        sound: 'red.wav'),
    Item(
        image: 'assets/images/colors/color_white.png',
        jaName: 'Shiroi',
        enName: 'White',
        sound: 'white.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        jaName: 'Kiiro',
        enName: 'Yellow',
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Numbers'),
            backgroundColor: const Color(0xFF463025),
          ),
          body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Items_list(
                item: numbers[index],
                color: const Color(0xFF7932a0),
                location_sound: 'colors',
              );
            },
          )),
    );
  }
}
