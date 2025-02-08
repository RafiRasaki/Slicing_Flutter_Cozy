import 'package:cozyapps/UI/404_page.dart';
import 'package:cozyapps/UI/detail.page.dart';
import 'package:cozyapps/shared/theme.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 150,
                height: 150,
                margin: EdgeInsets.only(top: 211),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.purple,
                    width: 1,
                    style: BorderStyle.solid
                  )
                ),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image 21.png'
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 65),

           Container(
                child: Column(
                  children: [
                    Text(
                      'Amanda Shayna',
                      style: blacktextstyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium
                      ),
                    ),
                  const SizedBox(height: 6),

                    Text(
                      '12:30 minutes',
                      style: greytextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: light
                      ),
                    ),

                    const SizedBox(height: 60),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: IconButton(
                        onPressed: (){
                          print('Decline');
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => NotfoundPage()
                            ),
                          );
                        }, 
                        icon: Icon(
                          Icons.close,
                          color: white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
  
}