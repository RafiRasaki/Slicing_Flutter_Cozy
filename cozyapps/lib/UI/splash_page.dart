import 'package:cozyapps/UI/home_page.dart';
import 'package:cozyapps/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: 30
              ),
              width: 50,
              height: 50,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/logo.png'
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 30
              ),
              width: 225,
              height: 72,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Find Cozy House To Stay And Happy',
                      style: blacktextstyle.copyWith(
                        fontSize: 23,
                        fontWeight: medium,   
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 30
              ),
              width: 225,
              height: 72,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Stop membuang banyak waktu pada tempat yang tidak habitable',
                      style: greytextstyle.copyWith(
                        fontSize: 13,
                        fontWeight: light,   
                      ),
                    ),
                  ),
                ],
              ),
            ),

           const SizedBox(height: 10),
             CustomButton(
              judul: 'Explore Now', 
              width: 200,
              margin: const EdgeInsets.only(left: 30),
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false
                );
              }
            ),

            ClipRect(
              child: Image.asset(
                'assets/bottom.png',
                width: 410,
                height: 374,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}