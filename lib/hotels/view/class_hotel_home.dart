import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';
import 'package:flutter_application_2/hotels/widget/column_card.dart';
import 'package:flutter_application_2/hotels/widget/container_bacground_grey.dart';
import 'package:flutter_application_2/hotels/widget/row_stack.dart';
import 'package:flutter_application_2/hotels/widget/text_large_bold.dart';

class ClassHotelHome extends StatelessWidget {
  const ClassHotelHome({super.key});

  @override
  Widget build(BuildContext context) {
    final String image;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _rowAppbar(context),
              HotelConst.sizedBoxHeight15,
              TextLargeBold(text: HotelConst.home_text, size: 25),
              HotelConst.sizedBoxHeight30,
              _searchTextFieldIcon(context),
              HotelConst.sizedBoxHeight30,
              RowTExtSeeAll(text: HotelConst.row_populers),
              HotelConst.sizedBoxHeight20,
              _rowStack(),
              HotelConst.sizedBoxHeight30,
              RowTExtSeeAll(text: HotelConst.column_more_title),
              HotelConst.sizedBoxHeight20,
              ColumnCard(
                image: HotelConst.image_one,
                hotelName: HotelConst.column_text_century,
                locationName: HotelConst.row_stack_text,
              ),
              HotelConst.sizedBoxHeight20,
              ColumnCard(
                  image: HotelConst.image_two,
                  hotelName: HotelConst.row_hotel_name_two,
                  locationName: HotelConst.row_hotel_two_location),
              HotelConst.sizedBoxHeight20,
              ColumnCard(
                  image: HotelConst.image_three,
                  hotelName: HotelConst.row_hotel_name_three,
                  locationName: HotelConst.row_hotel_three_location),
              HotelConst.sizedBoxHeight20,
              ColumnCard(
                  image: HotelConst.image_four,
                  hotelName: HotelConst.row_hotel_name_four,
                  locationName: HotelConst.row_hotel_four_location),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _rowStack() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RowStack(
            image: HotelConst.image_one,
            hotelName: HotelConst.row_stack_title,
            locationName: HotelConst.row_stack_text,
          ),
          HotelConst.sizedBoxWidth10,
          RowStack(
              image: HotelConst.image_two,
              hotelName: HotelConst.row_hotel_name_two,
              locationName: HotelConst.row_hotel_two_location),
          HotelConst.sizedBoxWidth10,
          RowStack(
              image: HotelConst.image_three,
              hotelName: HotelConst.row_hotel_name_three,
              locationName: HotelConst.row_hotel_three_location),
          HotelConst.sizedBoxWidth10,
          RowStack(
              image: HotelConst.image_four,
              hotelName: HotelConst.row_hotel_name_four,
              locationName: HotelConst.row_hotel_four_location),
        ],
      ),
    );
  }

  Row _searchTextFieldIcon(context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: HotelConst.BorderRadiusCircular20),
              hintText: HotelConst.search_textField,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        HotelConst.sizedBoxWidth10,
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: HotelConst.BorderRadiusCircular10,
                color: HotelConst.colorBlue,
              ),
              height: MediaQuery.of(context).size.height / 18,
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.manage_search)),
            )),
      ],
    );
  }

  Row _rowAppbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _rowAppImageText(context),
        ContainerBacgroundGrey(
          widget: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: HotelConst.colorWhite,
              )),
        ),
      ],
    );
  }

  Row _rowAppImageText(BuildContext context) {
    return Row(
      children: [
        ContainerBacgroundGrey(
            widget: Image.asset(
          HotelConst.image_appBar,
          fit: BoxFit.cover,
        )),
        HotelConst.sizedBoxWidth10,
        Text(
          HotelConst.home_appbar_text,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: HotelConst.colorBlack, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ColumnHeadText extends StatelessWidget {
  const ColumnHeadText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: HotelConst.colorBlack,
                  fontWeight: FontWeight.bold,
                )),
        Icon(
          Icons.flag_outlined,
          color: HotelConst.colorBlue,
        ),
      ],
    );
  }
}

class RowTExtSeeAll extends StatelessWidget {
  const RowTExtSeeAll({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: HotelConst.colorBlack,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
        Text(HotelConst.row_see,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: HotelConst.colorGrey)),
      ],
    );
  }
}
