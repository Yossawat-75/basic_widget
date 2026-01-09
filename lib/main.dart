  import 'dart:math';
  import 'package:flutter/material.dart';

  void main() {
    runApp(const DiceApp());
  }

  class DiceApp extends StatelessWidget {
    const DiceApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: true,
        home: DicePage(),
      );
    }
  }

  class DicePage extends StatefulWidget {
    const DicePage({super.key});

    @override
    State<DicePage> createState() => _DicePageState();
  }

  class _DicePageState extends State<DicePage> {
    String activeDice = 'assets/images/dice-1.png';

    void rollDice() {
      setState(() {
        int dice = Random().nextInt(6) + 1;
        activeDice = 'assets/images/dice-$dice.png';
        print(activeDice);
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlue,
                Colors.green,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDice,
                  width: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: rollDice,
                  child: const Text('Roll the Dice'),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
