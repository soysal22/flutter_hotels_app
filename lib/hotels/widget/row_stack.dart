import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';
import 'package:flutter_application_2/hotels/view/class_hotel_detail.dart';

class RowStack extends StatelessWidget {
  const RowStack(
      {super.key,
      required this.image,
      required this.hotelName,
      required this.locationName});

  final String image;
  final String hotelName;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ClassHotelDetail()));
                },
                child: _rowStackImage(context)),
            _rowPositionedIcon(),
            _rowHotelNameText(context),
            _rowLocationIconText(context),
          ],
        ),
      ],
    );
  }

  Positioned _rowLocationIconText(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 10,
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: HotelConst.colorWhite,
            size: 20,
          ),
          Text(
            locationName,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: HotelConst.colorWhite, fontSize: 15),
          )
        ],
      ),
    );
  }

  Positioned _rowHotelNameText(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 10,
      child: Text(
        hotelName,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: HotelConst.colorWhite),
      ),
    );
  }

  Positioned _rowPositionedIcon() {
    return Positioned(
      right: 15,
      top: 5,
      child: Icon(
        Icons.bookmark_border,
        color: HotelConst.colorWhite,
        size: 25,
      ),
    );
  }

  Container _rowStackImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          borderRadius: HotelConst.BorderRadiusCircular20,
          image: new DecorationImage(
            image: new AssetImage(image),
            fit: BoxFit.cover,
          )),
    );
  }
}
