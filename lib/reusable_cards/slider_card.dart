import 'package:flutter/material.dart';
import 'package:aftgnpg/constants.dart';

class SliderCard extends StatelessWidget {
  const SliderCard( {super.key,  required this.heading, required this.firstLine, required this.secondLine, required this.thirdLine } );

  final String heading, firstLine, secondLine, thirdLine;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              lightThemeColor.withOpacity(.6),
              darkThemeColor.withOpacity(.8),
            ],
          ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14.0,20.0,0.0,0.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                      child: Align(alignment: Alignment.centerLeft,child: Text(heading, style: bigHeadingStyle,)),
                  ),
                  Expanded(
                    flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Image(image: AssetImage('assets/images/coin.png'), width: 30, height: 30,),
                              Text(firstLine, style: carouselLowerStyle,),
                            ],
                          ),
                          Row(
                            children: [
                              const Image(image: AssetImage('assets/images/coin.png'), width: 30, height: 30,),
                              Text(secondLine, style: carouselLowerStyle,),
                            ],
                          ),
                          Row(
                            children: [
                              const Image(image: AssetImage('assets/images/coin.png'), width: 30, height: 30,),
                              Text(thirdLine, style: carouselLowerStyle,),
                            ],
                          ),
                        ],
                      ),
                  ),
                ],
        ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0.0,0.0,8.0,8.0),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image(
                    image: AssetImage('assets/images/money.png'),
                    height: 100, width: 100,
                  ),
                ),
            ),
          ],
        )
    );
  }
}