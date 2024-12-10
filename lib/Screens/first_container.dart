import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_padding.dart';

class CustomListWidget extends StatelessWidget {
  final List<String> samosa;
  final List<String> descriptions;
  final List<Color> containerColors;
  final List<Color> borderColors;
  final List<Color> textColors;
  final List<String> containerTexts;
  final double screenWidth;
  final double screenHeight;

  const CustomListWidget({
    super.key,
    required this.samosa,
    required this.descriptions,
    required this.containerColors,
    required this.borderColors,
    required this.textColors,
    required this.containerTexts,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsivePadding.customPadding(
        context,
      ),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey),
            right: BorderSide(color: Colors.grey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2),
          child: ListView.builder(
            itemCount: descriptions.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.1,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(samosa[index]),
                    ),
                  ),
                  Text(
                    descriptions[index],
                    style: const TextStyle(fontFamily: 'Lexend'),
                  ),
                  Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: containerColors[index],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: borderColors[index],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        containerTexts[index],
                        style: TextStyle(
                          color: textColors[index],
                          fontFamily: 'Lexend',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
