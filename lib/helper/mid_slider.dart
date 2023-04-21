import 'package:aftgnpg/constants.dart';
import 'package:aftgnpg/reusable_cards/slider_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  // Declaring Controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {

    // The slider for the Big Carousel
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          // Box that contains all the data of the box.
           Expanded(
            child: PageView(
              controller: _controller,
              children: [

                // Data for the First Card
                SliderCard(
                  heading: 'Win Big with Fantasy Stocks',
                  firstLine: 'Analyze and buy players',
                  secondLine: 'Build a portfolio of 4 players',
                  thirdLine: 'Sell high and cash in!',
                ),

                // Data for the Second Card
                SliderCard(
                  heading: 'Heading',
                  firstLine: 'First Line',
                  secondLine: 'Second Line',
                  thirdLine: 'Third Line',
                ),
              ],
            ),
          ),

          // For Smoother Dots down there.
          SmoothPageIndicator(
              controller: _controller,
              count: 2,

            // dot moving effect on the change.
            effect: JumpingDotEffect(
              activeDotColor: lightThemeColor,
              dotColor: lightThemeColor.withOpacity(.2),
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ],
      )
    );
  }

}