import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';

class ContextTextGrey extends StatelessWidget {
  const ContextTextGrey({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HotelConst.stop,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: HotelConst.colorGrey, fontSize: 17),
    );
  }
}
