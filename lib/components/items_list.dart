// ignore_for_file: non_constant_identifier_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

// ignore: camel_case_types
class Items_list extends StatelessWidget {
  const Items_list(
      {Key? key,
      required this.item,
      required this.color,
      required this.location_sound})
      : super(key: key);
  final Item item;
  final Color color;
  final String location_sound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(children: [
        Container(
          color: const Color(0xFFfef2da),
          child: Image.asset(item.image!),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jaName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$location_sound/');
              player.play(item.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            )),
      ]),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {Key? key,
      required this.color,
      required this.itemType,
      required this.phrase})
      : super(key: key);

  final Item phrase;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jaName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
