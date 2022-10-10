import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/hotels/const/hotel_const.dart';
import 'package:flutter_application_2/hotels/view/class_hotel_home.dart';
import 'package:flutter_application_2/hotels/widget/container_bacground_grey.dart';
import 'package:flutter_application_2/hotels/widget/context_text_grey.dart';
import 'package:flutter_application_2/hotels/widget/elevated_button_height.dart';
import 'package:flutter_application_2/hotels/widget/text_large_bold.dart';
import 'package:readmore/readmore.dart';

class ClassHotelDetail extends StatelessWidget {
  const ClassHotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: _stackImageAppBar(context),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: SingleChildScrollView(
                child: _columnProperties(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _columnProperties(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _rowHeadTextIcon(context),
        HotelConst.sizedBoxHeight10,
        _rowLocationText(),
        HotelConst.sizedBoxHeight20,
        _rowTextDolar(context),
        HotelConst.sizedBoxHeight10,
        TextLargeBold(text: HotelConst.detail_text_amenities, size: 20),
        HotelConst.sizedBoxHeight10,
        _rowContainerGreen(),
        HotelConst.sizedBoxHeight20,
        _rowTextDescription(),
        HotelConst.sizedBoxHeight20,
        _readMoreText(context),
        HotelConst.sizedBoxHeight30,
        ElevatedButtonHeight(
            text: HotelConst.detail_elevatedButtonHeight_text, onPressed: () {})
      ],
    );
  }

  ReadMoreText _readMoreText(BuildContext context) {
    return ReadMoreText(
      HotelConst.detail_text_readMore,
      trimLines:
          2, // kaç satırı gizlemek istersek bunu artırıp azaltmamız yeterli
      colorClickableText: HotelConst.colorBlue,
      trimMode: TrimMode.Line,
      trimCollapsedText: HotelConst.detail_trimCollapsedText,
      trimExpandedText: HotelConst.detail_trimExpandedText,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: HotelConst.colorGrey),
    );
  }

  Row _rowTextDescription() {
    return Row(
      children: [
        TextLargeBold(text: HotelConst.detail_text_descripton, size: 20),
        HotelConst.sizedBoxWidth10,
        ContextTextGrey(text: HotelConst.detail_text_reviews),
      ],
    );
  }

  Row _rowContainerGreen() {
    return Row(
      children: [
        containerIconText(
          icon: Icons.restaurant_outlined,
          iconColor: HotelConst.colorBlue,
          textContainer: HotelConst.detail_container_text_resto,
        ),
        HotelConst.sizedBoxWidth10,
        containerIconText(
          icon: Icons.fitness_center_sharp,
          iconColor: HotelConst.colorBlue,
          textContainer: HotelConst.detail_container_text_gym,
        ),
        HotelConst.sizedBoxWidth10,
        containerIconText(
          icon: Icons.pool,
          iconColor: HotelConst.colorBlue,
          textContainer: HotelConst.detail_container_text_pool,
        ),
        HotelConst.sizedBoxWidth10,
        containerIconText(
          icon: Icons.dashboard_sharp,
          iconColor: HotelConst.colorPink,
          textContainer: HotelConst.detail_container_text_more,
        ),
      ],
    );
  }

  Row _rowTextDolar(BuildContext context) {
    return Row(
      children: [
        Text(HotelConst.detail_text_dolar,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: HotelConst.colorBlue)),
        ContextTextGrey(text: HotelConst.column_text_night)
      ],
    );
  }

  Row _rowLocationText() {
    return Row(
      children: [
        Icon(Icons.location_on_outlined),
        HotelConst.sizedBoxWidth5,
        ContextTextGrey(text: HotelConst.row_stack_text),
      ],
    );
  }

  Row _rowHeadTextIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLargeBold(text: HotelConst.row_stack_title, size: 25),
        _rowIconText(context),
      ],
    );
  }

  Container _rowIconText(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 6,
        height: MediaQuery.of(context).size.width / 15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: HotelConst.radiusCircular10,
                bottomLeft: HotelConst.radiusCircular10),
            color: HotelConst.colorBlue),
        child: Row(
          children: [
            HotelConst.sizedBoxWidth5,
            Icon(
              Icons.star,
              color: HotelConst.colorYellow,
              size: 20,
            ),
            HotelConst.sizedBoxWidth5,
            Text(HotelConst.detail_text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: HotelConst.colorWhite,
                    )),
          ],
        ));
  }

  Stack _stackImageAppBar(context) {
    final PageController _controller = PageController();
    return Stack(
      children: [
        PageView(
          pageSnapping: true,
          dragStartBehavior: DragStartBehavior.start,
          controller: _controller,
          children: [
            Container(
              child: Image.asset(
                HotelConst.image_two,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                HotelConst.image_three,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                HotelConst.image_four,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                HotelConst.image_one,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Positioned(
            left: 10,
            top: 60,
            child: ContainerBacgroundGrey(
              widget: IconButton(
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ClassHotelHome()));
                  }),
                  icon: Icon(Icons.arrow_back_sharp)),
            )),
        Positioned(
            right: 10,
            top: 60,
            child: ContainerBacgroundGrey(
              widget: Icon(Icons.bookmark_border),
            )),
      ],
    );
  }
}

class containerIconText extends StatelessWidget {
  const containerIconText({
    Key? key,
    required this.iconColor,
    required this.textContainer,
    required this.icon,
  }) : super(key: key);

  final Color iconColor;
  final String textContainer;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 4.6,
      decoration: BoxDecoration(
          borderRadius: HotelConst.BorderRadiusCircular20,
          color: Color.fromARGB(255, 10, 236, 67)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 26,
          ),
          HotelConst.sizedBoxHeight5,
          Text(
            textContainer,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: HotelConst.colorBlack),
          )
        ],
      ),
    );
  }
}
