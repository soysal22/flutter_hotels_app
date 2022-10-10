import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';

class ContainerBacgroundGrey extends StatelessWidget {
  const ContainerBacgroundGrey({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 10,
      decoration: BoxDecoration(
          borderRadius: HotelConst.BorderRadiusCircular20,
          color: HotelConst.colorGrey),
      child: widget,
    );
  }
}
