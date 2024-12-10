import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/colors.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_fonts.dart';
import 'package:fooddelivery/Screens/tabbar_view.dart';

import 'card_container.dart';
import 'list.dart';

class HomeScreen extends StatefulWidget {
  static var routeName;

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.28,
              child: Stack(
                children: [
                  Image.asset('assets/images/wedding.png'),
                  Positioned(
                    top: screenHeight * 0.213,
                    left: screenWidth * 0.035,
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.44,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Bulk Food Delivery',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: ResponsiveFontSize.getResponsiveFontSize(
                                context, 80),
                            color: AppColors.fontColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.213,
                    left: screenWidth * 0.52,
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.44,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Catering Service',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: ResponsiveFontSize.getResponsiveFontSize(
                                context, 80),
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.7, // Adjust height as needed
              child: ReusableTabBarView(
                tabs: const ['ALL(8)', 'Breakfast', 'Lunch', 'Snacks'],
                tabContents: [
                  CustomCardWidget(
                    screenHeight: MediaQuery.of(context).size.height,
                    screenWidth: MediaQuery.of(context).size.width,
                    images: images,
                    text: text,
                  ),
                  CustomCardWidget(
                    screenHeight: MediaQuery.of(context).size.height,
                    screenWidth: MediaQuery.of(context).size.width,
                    images: images,
                    text: text,
                  ),
                  CustomCardWidget(
                    screenHeight: MediaQuery.of(context).size.height,
                    screenWidth: MediaQuery.of(context).size.width,
                    images: images,
                    text: text,
                  ),
                  CustomCardWidget(
                    screenHeight: MediaQuery.of(context).size.height,
                    screenWidth: MediaQuery.of(context).size.width,
                    images: images,
                    text: text,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
