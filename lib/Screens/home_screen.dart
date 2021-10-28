import 'package:book/Widgets/reading_list_card.dart';
import 'package:book/Widgets/rounded_button.dart';
import 'package:book/Widgets/score_rating.dart';
import 'package:book/Widgets/two_sided_rounded_btn.dart';
import 'package:book/constants.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main_page_bg.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(
                          text: 'What are you \nreading',
                        ),
                        TextSpan(
                          text: ' today?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      image: 'assets/images/book-1.png',
                      title: 'Crushing & Influence\n',
                      auth: 'Gary Venchuk',
                      rating: 4.9,
                      pressDetails: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                      },
                    ),
                    ReadingListCard(
                      image: 'assets/images/book-2.png',
                      title: 'Top 10 Business Hacks\n',
                      auth: 'Herman Joel',
                      rating: 4.8,
                      pressDetails: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
                      },
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(
                            text: 'Best of the ',
                          ),
                          TextSpan(
                            text: 'day',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    bestOfTheDay(size, context),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(
                            text: 'Continue',
                          ),
                          TextSpan(
                            text: ' Reading...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: Color(0xFFD3D3D3).withOpacity(.84),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20, left: 30),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Crushing & Influence',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Gary Venchuk',
                                            style: TextStyle(
                                              color: kLightBlackColor,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              'Chapter 7 of 10',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/book-1.png',
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                color: kProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container bestOfTheDay(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 205,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, right: size.width * .35, top: 24),
              height: 210,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(0.47),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'New York Time Best For 11th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'How To Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people….',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: size.width * .37,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TwoSidedRoundedButton(
                    text: 'Read', radius: 24, press: () {})),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
