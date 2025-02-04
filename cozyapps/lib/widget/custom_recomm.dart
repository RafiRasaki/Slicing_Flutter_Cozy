import 'package:cozyapps/UI/detail.page.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomRecommendedSpace extends StatelessWidget{

  final String imgurl;
  final String caption;
  final int price;
  final String symbol;
  final String permont;
  final String loc;
  final String rating;

  const CustomRecommendedSpace({
    Key? key,
    required this.imgurl,
    required this.caption,
    required this.price,
    this.symbol = '\$',
    required this.loc,
    required this.permont,
    required this.rating
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        width: 329,
        height: 110,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  image: AssetImage(
                    imgurl
                  ),
                )
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purple,
                      borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(234, 200),
                      topRight: Radius.circular(60)
                     ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 15
                          ),
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Icon_star_solid.png'
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),

                        Expanded(
                          child: Text(
                            rating,
                            style: whitetextstyle.copyWith(
                              fontSize: 13,
                              fontWeight: medium
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ) 
            ),
            
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caption,
                    style: blacktextstyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium
                    ),
                  ),

                  SizedBox(height: 2),

                  Container(
                    child: Row(
                      children: [
                        Text(
                        '$symbol$price',
                        style: purpletextstyle.copyWith(
                          fontSize: 16
                        ),
                      ),

                    const SizedBox(width: 5),

                      Text(
                        permont,
                        style: greytextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      ]
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    loc,
                    style: greytextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: light
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}