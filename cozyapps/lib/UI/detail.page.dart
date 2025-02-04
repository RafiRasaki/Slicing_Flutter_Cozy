import 'package:cozyapps/UI/home_page.dart';
import 'package:cozyapps/UI/main_page.dart';
import 'package:cozyapps/shared/theme.dart';
import 'package:cozyapps/widget/custom_botton.dart';
import 'package:cozyapps/widget/custom_facilitie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/detailpage.png'
                ),
              ),
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //button back
                      Container(
                        margin: const EdgeInsets.only(
                          left: 24,
                          top: 30
                        ),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: white
                        ),
                        child: Column(
                          children: [
                            IconButton(
                            onPressed: (){
                              print('Button Back');
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => const MainPage()
                                ),
                              );
                            }, 
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: purple,
                              size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //button like
                    Container(
                      margin: const EdgeInsets.only(
                      right: 24,
                      top: 30
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: white
                    ),
                        
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: (){
                               print('Button Like');
                              }, 
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: purple,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.only(top: 270),
              width: 375,
              height: 604,
              decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30, left: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,    
                        children: [
                          Row(
                            children: [
                              Text(
                              'Kuretakeso Hott',
                              style: blacktextstyle.copyWith(
                              fontSize: 22,
                              fontWeight: medium
                              ),
                             ),
                             const SizedBox(width: 30),
                             
                             RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 17,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              ignoreGestures: true,
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                  
                          Text(
                            '\$52 / Mont',
                            style: greytextstyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                          const SizedBox(height: 30),
          
                          Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Main Facilities',
                                style: blacktextstyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: regular
                                ),
                              ),
                            ],
                          ),
                        ),
          
                          Container(
                            width: 300,
                            height: 97,
                            //color: red,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               
                               CustomMainFacilities(
                                imgurl: 'assets/kitchen.png', 
                                description: '2 Kitchen'
                                ),
          
                                CustomMainFacilities(
                                imgurl: 'assets/kasur.png', 
                                description: '3 Bedroom'
                                ),
          
                                CustomMainFacilities(
                                imgurl: 'assets/lemari.png', 
                                description: '3 Big Lemari'
                                ),
                                
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Photos',
                                  style: blacktextstyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: regular
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              margin: EdgeInsets.only(top: 12),
                              width: 366,
                              height: 124,
                              //color: red,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 110,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/image 18.png'
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 18),
                                  Container(
                                    width: 110,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/pic.png'
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 18),
                                  Container(
                                    width: 110,
                                    height: 88,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/image 17.png'
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            child: Text(
                              'Location',
                              style: blacktextstyle.copyWith(
                                fontSize: 16,
                                fontWeight: regular
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'Jln. Kappan Sukses No.20\nPalembang',
                                style: greytextstyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: regular
                                ),
                              ),
                              const SizedBox(width: 60),

                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: greysoft
                                ),
                                child: Icon(
                                  Icons.place_rounded,
                                  color: grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),

                          CustomButton(
                            judul: 'Book Now', 
                            onPressed: (){
                              print('Book Now');
                            },
                            width: 280,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}