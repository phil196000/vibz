import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Texts/DarkBlue.dart';
import 'package:vibz/Widgets/Texts/DarkBlueShade.dart';

import 'holder.dart';
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
class CarouselOnboarding extends StatefulWidget {
  final bool visible;

  const CarouselOnboarding({Key key, this.visible}) : super(key: key);
  @override
  _CarouselOnboardingState createState() => _CarouselOnboardingState();
}

class _CarouselOnboardingState extends State<CarouselOnboarding> {
 int _current = 0;
 ThemeModel themeModel = ThemeModel();
  @override
  Widget build(BuildContext context) {
    return
      // Visibility(
      // visible: widget.visible,
      // child:

      // Expanded(
      //   flex: 6,
      //   child:

        Container(
          // decoration: BoxDecoration(color: ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Holder(),
                    Holder(),
                  ],
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                ),
              ),
              CarouselSlider(
                  items: imgList
                      .map((e) => Container(
                    // color: Colors.brown,
                    // height: MediaQuery.of(context).size.height *
                    //     0.2,
                      margin: EdgeInsets.symmetric(
                          horizontal: 10),
                      width: MediaQuery.of(context)
                          .size
                          .width,
                      // color: Colors.blue,
                      child: Column(children: <Widget>[
                        Expanded(
                          child: Image.network(
                            e,
                            // height: MediaQuery.of(context).size.height * 0.28,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          child: DarkBlueText(
                            text: "The Gossip",
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          child: DarkBlueShadeText(
                            text:
                            "Act as a gossip or be added as one to conversations",
                          ),
                        )
                      ])))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      viewportFraction: 1,
                      height:
                      MediaQuery.of(context).size.height *
                          0.339,
                      enlargeCenterPage: true,
                      enlargeStrategy:
                      CenterPageEnlargeStrategy.scale,
                      // enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      })),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ...imgList.map((e) {
                      int index = imgList.indexOf(e);
                      return Container(
                        height: 10,
                        width: 36,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(5.0),
                          color: _current == index
                              ? const Color(0xff12fdbe)
                              : Color.fromRGBO(
                              18, 253, 190, 0.2),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(
                                  0, 0, 0, 0.16),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      );
                      // return Container(
                      //     width: 12.0,
                      //     height: 12.0,
                      //     margin: EdgeInsets.symmetric(
                      //         vertical: 10.0, horizontal: 5.0),
                      //     decoration: BoxDecoration(
                      //       shape: BoxShape.circle,
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.grey,
                      //           offset: Offset(0.0, 3.0), //(x,y)
                      //           blurRadius: 6.0,
                      //         ),
                      //       ],
                      //       color: _current == index
                      //           ? Theme.of(context).primaryColor
                      //           : Color.fromRGBO(254, 136, 4, 0.43),
                      //     ));
                    })
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              border:
              Border.all(color: themeModel.borderColor),
              color: themeModel.white),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.only(bottom: 20),
        );
      // );
    // );
  }
}
