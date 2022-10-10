import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';

class ElevatedButtonHeight extends StatelessWidget {
  const ElevatedButtonHeight({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double _height = 15;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: HotelConst.BorderRadiusCircular40)),
        onPressed: onPressed,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
