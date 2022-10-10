import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';
import 'package:flutter_application_2/hotels/view/class_hotel_detail.dart';
import 'package:flutter_application_2/hotels/widget/text_small_bold.dart';

class ColumnCard extends StatelessWidget {
  const ColumnCard({
    super.key,
    required this.image,
    required this.hotelName,
    required this.locationName,
  });

  final String image;
  final String hotelName;
  final String locationName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: _clipRectImage(context),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: _cardColumnTexts(context),
            ),
          ),
        ],
      ),
    );
  }

  ClipRRect _clipRectImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: HotelConst.radiusCircular20,
          bottomRight: HotelConst.radiusCircular20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ClassHotelDetail()));
        },
        child: Image.asset(
          image,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height / 6,
        ),
      ),
    );
  }

  _cardColumnTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardTextIcon(),
        HotelConst.sizedBoxHeight5,
        _cardLocationText(context),
        HotelConst.sizedBoxHeight5,
        _cardStarIConText(context),
        HotelConst.sizedBoxHeight15,
        _cardDolarText(context),
      ],
    );
  }

  Row _cardDolarText(BuildContext context) {
    return Row(
      children: [
        Text(HotelConst.column_text_dolar,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: HotelConst.colorBlue,
                  fontSize: 15,
                )),
        Text(HotelConst.column_text_night,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: HotelConst.colorGrey,
                  fontSize: 15,
                )),
      ],
    );
  }

  Row _cardStarIConText(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: HotelConst.colorYellow,
          size: 20,
        ),
        HotelConst.sizedBoxWidth5,
        Text(HotelConst.column_text_star,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: HotelConst.colorGrey,
                  fontSize: 13,
                )),
      ],
    );
  }

  Row _cardLocationText(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: HotelConst.colorBlack,
          size: 18,
        ),
        Text(
          locationName,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: HotelConst.colorGrey, fontSize: 13),
        )
      ],
    );
  }

  Row _cardTextIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextSmallBold(
          text: hotelName,
        ),
        Icon(
          Icons.bookmark_border,
          color: HotelConst.colorBlue,
        )
      ],
    );
  }
}
