import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomPopulerCities extends StatelessWidget{

  final String judul;
  final String imgurl;

  const CustomPopulerCities({
    Key? key, 
    required this.judul,
    required this.imgurl
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Berhasil');
      },
      child: Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                color: greysoft,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 102,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          imgurl,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purple,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(234, 156),
                              topRight: Radius.circular(60)
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Icon_star_solid.png'
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),

                  Text(
                    judul,
                    style: blacktextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  ),
                ],
              ),
            ),
    );
  }
  
}