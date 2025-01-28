import 'package:cozyapps/UI/card_page.dart';
import 'package:cozyapps/UI/home_page.dart';
import 'package:cozyapps/UI/love_page.dart';
import 'package:cozyapps/UI/mail_page.dart';
import 'package:cozyapps/cubit/page_cubit.dart';
import 'package:cozyapps/shared/theme.dart';
import 'package:cozyapps/widget/custom_mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget{
   const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex){
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MailPage();
        case 2:
          return CardPage();
        case 3:
          return LovePage();
        default:
          return HomePage();
      }
    }

    Widget customButtonNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 65,
          margin: EdgeInsets.only(
            bottom: 7,
            left: 24,
            right: 24
            ),
          decoration: BoxDecoration(
           color: white, 
           borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             CustomMainButton(
              index: 0, 
              imgurl: 'assets/Icon_home_solid.png'
              ),

              CustomMainButton(
                index: 1, 
                imgurl: 'assets/Icon_mail_solid.png'
              ),

              CustomMainButton(
                index: 2, 
                imgurl: 'assets/Icon_card_solid.png'
              ),

              CustomMainButton(
                index: 3, 
                imgurl: 'assets/Icon_love_solid.png'
              ),
            ],
          ),
        ),
      );
    }

  return BlocBuilder<PageCubit,int>(
    builder: (context, currentindex){
      return Scaffold(
        body: Stack(
          children: [
            buildContent(currentindex),
            customButtonNavigation()
          ],
        ),
      );
    }
  );
 }
}