import 'package:flutter/material.dart';

class OccasionDropdown extends StatefulWidget {
  final Function(String) onSelected;

  const OccasionDropdown({super.key, required this.onSelected});

  @override
  // ignore: library_private_types_in_public_api
  _OccasionDropdownState createState() => _OccasionDropdownState();
}

class _OccasionDropdownState extends State<OccasionDropdown> {
  String? selectedOccasion;

  final List<String> occasions = [
    'Birthday',
    'Marriage',
    'New Year',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedOccasion,
      hint: const Text('Occasion'),
      items: occasions.map((occasion) {
        return DropdownMenuItem<String>(
          value: occasion,
          child: Text(
            occasion,
            style: const TextStyle(fontFamily: 'Lexend'),
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedOccasion = value!;
        });
        widget.onSelected(value!);
      },
    );
  }
}
