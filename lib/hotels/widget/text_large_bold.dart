import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';

class TextLargeBold extends StatelessWidget {
  const TextLargeBold({super.key, required this.text, required this.size});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: HotelConst.colorBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: size,
                )),
      ],
    );
  }
}
