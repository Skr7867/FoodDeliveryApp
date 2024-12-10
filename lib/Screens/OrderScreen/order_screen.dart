import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_padding.dart';
import 'package:fooddelivery/Screens/OrderScreen/drop_down.dart';

import '../../CustomeWidgets/colors.dart';
import 'bottom_elevated_button.dart';
import 'calendar_screen.dart';
import 'slider.dart';
import 'time_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int guestCount = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Fill Dtails',
          style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 12,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: ResponsivePadding.customPadding(
              context,
              right: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/square.png',
                    height: screenHeight * 0.02),
                const Text(
                  'South Indian BreakFast',
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset('assets/icons/edit.png')
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            height: screenHeight * 0.2,
            width: screenWidth * 0.9,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OccasionDropdown(
                  onSelected: (selectedValue) {
                    // Handle the selected value
                    ('Occasion: $selectedValue');
                  },
                ),
                Divider(
                  color: Colors.grey[300],
                  indent: 10,
                  endIndent: 10,
                ),
                const Text(
                  'Date and Time',
                  style: TextStyle(fontFamily: 'Lexend'),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    const CalendarContainer(),
                    SizedBox(
                      width: screenWidth * 0.06,
                    ),
                    const TimeSelectionContainer(),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Container(
            height: screenHeight * 0.35,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: ResponsivePadding.symmetricPadding(context,
                      horizontal: 3, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Price Per Plate',
                        style: TextStyle(fontFamily: 'Lexend'),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: ' 20%',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(
                              text: '↓',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Lexend',
                              ),
                            ),
                            TextSpan(
                              text: '₹299',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontFamily: 'Lexend',
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: ' ₹ 240 ',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontStyle: FontStyle.italic,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                DottedLine(
                  dashColor: Colors.grey.shade300,
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          ResponsivePadding.customPadding(context, left: 3),
                      child: const Text(
                        'Total Guests',
                        style: TextStyle(fontSize: 12, fontFamily: 'Lexend'),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.14),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (guestCount > 0) {
                            guestCount--; // Decrease count
                          }
                        });
                      },
                      icon: const ImageIcon(
                        AssetImage(
                          "assets/icons/minus.png",
                        ),
                        color: AppColors.fontColor,
                        size: 24,
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.057,
                      width: screenWidth * 0.23,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(guestCount.toString(),
                            style: const TextStyle(
                                fontFamily: 'Lexend', fontSize: 14)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          guestCount++; // Increase count
                        });
                      },
                      icon: const ImageIcon(
                        AssetImage("assets/icons/plus.png"),
                        size: 24,
                        color: AppColors.fontColor,
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: CustomSlider(),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Padding(
                  padding: ResponsivePadding.customPadding(
                    context,
                    bottom: 2,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: '✨DYNAMIC PRICING',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        color: AppColors.fontColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 10,
                      ),
                      children: [
                        TextSpan(
                          text: '  more guests, more savings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Lexend',
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: BottomButtonScreen()),
        ],
      ),
    );
  }
}
