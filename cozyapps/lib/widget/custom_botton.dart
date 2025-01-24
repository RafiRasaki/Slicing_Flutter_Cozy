import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomButton extends StatelessWidget {

  final String judul;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin; 

   const CustomButton({
    Key? key, required this.judul,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ,
        width: width,
        height: 50,
        child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )
        ), 
        child: Text(
          judul,
          style: whitetextstyle.copyWith(
            fontSize: 15,
            fontWeight: medium
          ),
          )
      ),
    );
  }
}