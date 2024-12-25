import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  static String routName = 'search_screen';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(50),
              ),
              color: Color(0xFFF4F6FD),
            ),
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline tickets')),
                  ),
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(AppLayout.getHeight(50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline tickets')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
