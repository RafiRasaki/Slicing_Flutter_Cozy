import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomTipsPage extends StatelessWidget{

  final String caption;
  final String ket;
  final String img;

  const CustomTipsPage ({
    Key? key,
    required this.caption,
    required this.ket,
    required this.img
    }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
          margin: EdgeInsets.only(left: 24),
          width: 321,
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                  )
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  caption,
                  style: blacktextstyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium
                   ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    ket,
                    style: greytextstyle.copyWith(
                      fontSize: 14,
                      fontWeight: light
                    ),
                    )
                  ],
               ),
              ),
            ],
          ),
        ),
    );
  }
  
}