import 'package:flutter/material.dart';
import "place_title.dart";
import 'place_description.dart';

class Place extends StatelessWidget {
  String placeName;
  String placeDescription;

  Place(this.placeName, this.placeDescription, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PlaceTitle(placeName),
        PlaceDescription(placeDescription)
      ],
    );
  }
}
