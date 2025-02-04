import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomMainFacilities extends StatelessWidget{

  final String imgurl;
  final String description;

  const CustomMainFacilities ({
    Key? key,
    required this.imgurl,
    required this.description
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 81,
      //color: grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imgurl
                ),
              ),
            ), 
          ),
          const SizedBox(height: 8),

          Container(
            child: Text(
              description,
              style: greytextstyle.copyWith(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
                              
    );
  }
  
}