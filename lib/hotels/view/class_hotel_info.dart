import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';
import 'package:flutter_application_2/hotels/view/class_hotel_home.dart';
import 'package:flutter_application_2/hotels/widget/context_text_grey.dart';
import 'package:flutter_application_2/hotels/widget/elevated_button_height.dart';

class ClassHotelInfo extends StatelessWidget {
  const ClassHotelInfo({super.key});

  final double _containerHeight = 2.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backGroundStackImage(context),
          _columnContainer(context),
        ],
      ),
    );
  }

  Image _backGroundStackImage(BuildContext context) {
    return Image.asset(
      HotelConst.image_one,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
    );
  }

  Column _columnContainer(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / _containerHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: HotelConst.radiusCircular40,
                topRight: HotelConst.radiusCircular40),
            color: HotelConst.colorWhite,
          ),
          child: Padding(
            padding: HotelConst.padding20,
            child: Column(
              children: [
                _textInfoTitle(context),
                HotelConst.sizedBoxHeight20,
                ContextTextGrey(text: HotelConst.info_context),
                HotelConst.sizedBoxHeight70,
                ElevatedButtonHeight(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ClassHotelHome(),
                      ));
                    },
                    text: HotelConst.info_elevatedButton_text),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Text _textInfoTitle(BuildContext context) {
    return Text(
      HotelConst.info_title,
      style: Theme.of(context)
          .textTheme
          .headline3
          ?.copyWith(color: HotelConst.colorBlack, fontWeight: FontWeight.w300),
    );
  }
}
