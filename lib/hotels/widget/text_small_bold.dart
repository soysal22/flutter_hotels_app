import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';

class TextSmallBold extends StatelessWidget {
  const TextSmallBold({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4?.copyWith(
          color: HotelConst.colorBlack,
          fontWeight: FontWeight.bold,
          fontSize: 16),
    );
  }
}
