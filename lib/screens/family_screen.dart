import 'package:flutter/material.dart';
import 'package:toku/components/items_list.dart';
import 'package:toku/models/item.dart';

// ignore: camel_case_types
class Family_page extends StatelessWidget {
  const Family_page({Key? key}) : super(key: key);
  final List<Item> family = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        jaName: 'Otōsan',
        enName: 'Father',
        sound: 'father.wav'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        jaName: 'Hahaoya',
        enName: 'Mother',
        sound: 'mother.wav'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        jaName: 'Ojīsan',
        enName: 'Grand Father',
        sound: 'grand_father.wav'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        jaName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'grand_mother.wav'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jaName: 'Musume',
        enName: 'Daughter',
        sound: 'daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        jaName: 'Musuko',
        enName: 'Son',
        sound: 'son.wav'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        jaName: 'Nīsan',
        enName: 'Older Bother',
        sound: 'older_bother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        jaName: 'Onēsan',
        enName: 'Older Sister',
        sound: 'older_sister.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jaName: 'Otōto',
        enName: 'Younger Brohter',
        sound: 'younger_brohter.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        jaName: 'Imōto',
        enName: 'Younger Sister',
        sound: 'younger_sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Family Members'),
            backgroundColor: const Color(0xFF48302c),
          ),
          body: ListView.builder(
            itemCount: family.length,
            itemBuilder: (context, index) {
              return Items_list(
                item: family[index],
                color: const Color(0xFF578a35),
                location_sound: 'family_members',
              );
            },
          )),
    );
  }
}
