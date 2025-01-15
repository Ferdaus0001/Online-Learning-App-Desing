import 'package:flutter/material.dart';

class WirpScreen extends StatefulWidget {
  const WirpScreen({super.key});

  @override
  State<WirpScreen> createState() => _WirpScreenState();
}

class _WirpScreenState extends State<WirpScreen> {
  int seleat = 0; // সিলেক্টেড অপশনের ইনডেক্স
  final List<String> options = [
    'apple',
    'mango',
    'bangan',
    'patato',
    'apple2',
    'mango2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 11),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Wrap(
                spacing: 5,
                runSpacing: 11,
                children: List<Widget>.generate(options.length, (int index) {
                  return ChoiceChip(
                    avatar: seleat == index ? const Icon(Icons.check_circle, color: Colors.white) : null,
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                      child: Text(
                        options[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: seleat == index ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    selected: seleat == index,
                    selectedColor: Colors.blue,
                    onSelected: (bool selected) {
                      setState(() {
                        seleat = selected ? index : seleat;
                      });
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
