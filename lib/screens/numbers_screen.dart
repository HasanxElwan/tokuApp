import 'package:flutter/material.dart';
import 'package:toku/components/items_list.dart';
import 'package:toku/models/item.dart';

// ignore: camel_case_types
class Numbers_page extends StatelessWidget {
  const Numbers_page({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        jaName: 'Ichi',
        enName: 'One',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        jaName: 'Ni',
        enName: 'Two',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        jaName: 'San',
        enName: 'Three',
        sound: 'number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        jaName: 'Shi',
        enName: 'Four',
        sound: 'number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        jaName: 'Go',
        enName: 'Five',
        sound: 'number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        jaName: 'Roku',
        enName: 'Six',
        sound: 'number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        jaName: 'Sebun',
        enName: 'Seven',
        sound: 'number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        jaName: 'Hachi',
        enName: 'Eight',
        sound: 'number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        jaName: 'Kyū',
        enName: 'Nine',
        sound: 'number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        jaName: 'Jū',
        enName: 'Ten',
        sound: 'number_ten_sound.mp3'),
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
                color: const Color(0xFFf09137),
                location_sound: 'numbers',
              );
            },
          )),
    );
  }
}
