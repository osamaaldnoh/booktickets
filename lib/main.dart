import 'package:booktickets/screen/bottom_bar.dart';
import 'package:booktickets/screen/home_screen.dart';
import 'package:booktickets/screen/person_screen.dart';
import 'package:booktickets/screen/search_screen.dart';
import 'package:booktickets/screen/ticket_screen.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary
      ),
      initialRoute: '/',
      routes: {
        '/' : (_) => BottomBar(),
        HomeScreen.routName : (_) => HomeScreen(),
        SearchScreen.routName : (_) => SearchScreen(),
        TicketScreen.routName : (_) => TicketScreen(),
        PersoneScreen.routName : (_) => PersoneScreen(),
      },
    );
  }
}
