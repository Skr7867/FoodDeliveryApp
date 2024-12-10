import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_padding.dart';
import 'package:fooddelivery/Screens/list.dart';
import 'package:fooddelivery/Screens/second_container.dart';

import '../CustomeWidgets/colors.dart';
import 'first_container.dart';

class AddToCartScreen extends StatefulWidget {
  static var routeName; // ignore: prefer_typing_uninitialized_variables

  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: ResponsivePadding.customPadding(context, right: 25),
            child: const Row(
              children: [
                Text(
                  'South Indian Breakfast',
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.blackColor,
                    fontFamily: 'Lexend',
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.edit),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: CustomListWidget(
              samosa: samosa,
              descriptions: description,
              containerColors: containerColor,
              borderColors: borderColor,
              textColors: textColor,
              containerTexts: containerText,
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ),
          Flexible(
            flex: 4,
            child: VegSelector(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ),
        ],
      ),
    );
  }
}
