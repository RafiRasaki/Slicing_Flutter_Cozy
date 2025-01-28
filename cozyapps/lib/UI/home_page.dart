import 'package:cozyapps/shared/theme.dart';
import 'package:cozyapps/widget/custom_popular_cities.dart';
import 'package:cozyapps/widget/custom_recomm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 24,
            top: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore Now',
                style: blacktextstyle.copyWith(
                  fontSize: 24,
                  fontWeight: medium
                ),
              ),

          const SizedBox(height: 2),

              Text(
                'Mencari Kosan Yang Cozy',
                style: greytextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: light
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        Container(
          margin: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Cities',
                style: blacktextstyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 16),

        Container(
          margin: const EdgeInsets.only(
            left: 24
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                child: Row(
                  children: [
                   CustomPopulerCities(
                    judul: 'Jakarta', 
                    imgurl: 'assets/jakarta.png'
                    ) ,

                  SizedBox(width: 20),

                  CustomPopulerCities(
                    judul: 'Bandung', 
                    imgurl: 'assets/bandung.png'
                    ), 

                    SizedBox(width: 20),

                    CustomPopulerCities(
                    judul: 'Surabaya', 
                    imgurl: 'assets/surabaya.png'
                    ), 

                    SizedBox(width: 20),

                    CustomPopulerCities(
                    judul: 'Palembang', 
                    imgurl: 'assets/palembang.png'
                    ),

                    SizedBox(width: 20),

                    CustomPopulerCities(
                    judul: 'Aceh', 
                    imgurl: 'assets/Aceh.png'
                    ), 

                    SizedBox(width: 20),

                    CustomPopulerCities(
                    judul: 'Bogor', 
                    imgurl: 'assets/bogor.png'
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30

                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended Space',
                      style: blacktextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    CustomRecommendedSpace(
                      imgurl: 'assets/kure.png', 
                      caption: 'Kuretakeso Hott', 
                      price: 52, 
                      permont: '/ Mont',
                      loc: 'Bandung, Germany', 
                      rating: '4/5',
                    ),

                  const SizedBox(height: 30),

                    CustomRecommendedSpace(
                      imgurl: 'assets/image 15.png', 
                      caption: 'Roemah Nenek', 
                      price: 11, 
                      permont: '/ Mont',
                      loc: 'Seattle, Bogor', 
                      rating: '5/5',
                    ),

                    const SizedBox(height: 30),
                    
                    CustomRecommendedSpace(
                      imgurl: 'assets/image 13.png', 
                      caption: 'Darrling How', 
                      price: 20, 
                      permont: '/ Mont',
                      loc: 'Jakarta, Indonesia', 
                      rating: '3/5',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              Container(
                child: Row(
                  children: [
                    Text('Tips & Guidance')
                  ],
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