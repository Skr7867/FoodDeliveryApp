import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double sliderValue = 10.0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.purple,
                inactiveTrackColor: Colors.grey.shade300,
                thumbColor: Colors.purple,
                overlayColor: Colors.purple.withOpacity(0.2),
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 10.0),
                trackHeight: 2.0,
              ),
              child: Slider(
                value: sliderValue,
                min: 10.0,
                max: 1500.0,
                divisions: 149,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${sliderValue.toInt()} (min)',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.3,
                ),
                const Text(
                  '1500',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
