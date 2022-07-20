import 'package:flutter/material.dart';
import 'package:toku/screens/color_screen.dart';
import 'package:toku/screens/family_screen.dart';
import 'package:toku/screens/phrases_screen.dart';
import '../components/category_items.dart';
import 'numbers_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFfff4db),
        appBar: AppBar(
          title: const Text(
            'Toku',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: const Color(0xFF48302c),
        ),
        body: Column(
          children: [
            Category(
              text: ('Numbers'),
              color: const Color(0xFFf09137),
              onTap: () {
                Navigator.push(context,
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    MaterialPageRoute(builder: (BuildContext) {
                  return const Numbers_page();
                }));
              },
            ),
            Category(
              text: ('Family Members'),
              color: const Color(0xFF578a35),
              onTap: () {
                Navigator.push(context,
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    MaterialPageRoute(builder: (BuildContext) {
                  return const Family_page();
                }));
              },
            ),
            Category(
              text: ('Colors'),
              color: const Color(0xFF7932a0),
              onTap: () {
                Navigator.push(context,
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    MaterialPageRoute(builder: (BuildContext) {
                  return const Color_page();
                }));
              },
            ),
            Category(
              text: ('Phrases'),
              color: const Color(0xFF50acc9),
              onTap: () {
                Navigator.push(context,
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    MaterialPageRoute(builder: (BuildContext) {
                  return const PhrasesPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
