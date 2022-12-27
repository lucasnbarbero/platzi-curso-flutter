import 'package:flutter/material.dart';
import './components/layout/header_appbar.dart';
import 'components/place/place.dart';
import 'components/review/review_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String placeDescription =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Place("Bahamas", placeDescription),
              ReviewList(),
            ],
          ),
          HeaderAppBar(),
        ],
      )),
    );
  }
}
