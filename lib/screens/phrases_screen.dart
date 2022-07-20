import 'package:flutter/material.dart';
import 'package:toku/components/items_list.dart';
import 'package:toku/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Item> phrases = const [
    Item(
      sound: 'dontforgettosubscribe.wav',
      jaName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'iloveprogramming.wav',
      jaName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    Item(
      sound: 'programmingiseasy.wav',
      jaName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'whereareyougoing.wav',
      jaName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Item(
      sound: 'whatisyourname.wav',
      jaName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'iloveanime.wav',
      jaName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'howareyoufeeling.wav',
      jaName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    Item(
      sound: 'areyoucoming.wav',
      jaName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'yesimcoming.wav',
      jaName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: phrases[index],
            color: const Color(0xff50ADC7),
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
