import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_fonts.dart';
import 'package:fooddelivery/Screens/list.dart';

import '../CustomeWidgets/colors.dart';
import 'card_container.dart';

class ReusableTabBarView extends StatefulWidget {
  final List<String> tabs;
  final List<Widget> tabContents;

  const ReusableTabBarView({
    super.key,
    required this.tabs,
    required this.tabContents,
  }) : assert(tabs.length == tabContents.length,
            'Tabs and contents must have the same length');

  @override
  // ignore: library_private_types_in_public_api
  _ReusableTabBarViewState createState() => _ReusableTabBarViewState();
}

class _ReusableTabBarViewState extends State<ReusableTabBarView> {
  int selectedTabIndex = 0; // Track the selected tab

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: widget.tabs.length,
      child: Column(
        children: [
          TabBar(
            dividerColor: AppColors.greyColor,
            isScrollable: false,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.redColor,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index; // Update selected tab index
              });
            },
            tabs: widget.tabs.map((tab) {
              final isSelected = widget.tabs.indexOf(tab) == selectedTabIndex;
              return Tab(
                child: Text(
                  tab,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    fontSize:
                        ResponsiveFontSize.getResponsiveFontSize(context, 60),
                    color:
                        isSelected ? AppColors.redColor : AppColors.blackColor,
                  ),
                ),
              );
            }).toList(),
          ),
          Expanded(
            child: TabBarView(
              children: widget.tabContents.asMap().entries.map((entry) {
                // int index = entry.key;
                // Widget content = entry.value;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      CustomCardWidget(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        images: images,
                        text: text,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Additional container below the card widget
                      CustomCardWidget(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        images: images,
                        text: text,
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
