import 'package:cozyapps/UI/main_page.dart';
import 'package:cozyapps/shared/theme.dart';
import 'package:cozyapps/widget/custom_botton.dart';
import 'package:flutter/material.dart';

class NotfoundPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 85.95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/404.png'
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),

            Container(
              width: 265,
              height: 36,
              child: Column(
                children: [
                  Text(
                    'Where Are You Going',
                    style: blacktextstyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium
                    ),
                  ),
                ],
              )
            ),
            const SizedBox(height: 14),

            Container(
              width: 290,
              height: 56,
              child: Column(
                children: [
                  Text(
                    'Seems like page that you were\n Requested is already gone',
                    style: greytextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: light
                    ), textAlign: TextAlign.center
                  ), 
                ],
              ),
            ),

            const SizedBox(height: 50),

            CustomButton(
              judul: 'Back To Home',
              width: 210, 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MainPage()
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
  
}