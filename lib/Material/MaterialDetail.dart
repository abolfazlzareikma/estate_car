import 'package:expandable_text/expandable_text.dart';
import 'package:shopping/Material/MaterialEstate.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Material/MaterialColor.dart';
import 'MaterialColor.dart';
import 'package:carousel_pro/carousel_pro.dart';


class MaterialDetail extends StatefulWidget {
  final String image;
  final String time;
  final String day;
  final String image2;
  final String image3;
  final String image4;
  final String price;
  final String text;
  final String flag;
  final String bathroom;
  final String bedroom;
  final String title;
  final TextDirection language;
  final String label;

  const MaterialDetail({Key key, this.image, this.time, this.day, this.image2, this.image3, this.image4, this.price, this.text, this.flag, this.bathroom, this.bedroom, this.title, this.language, this.label}) : super(key: key);



  @override
  _MaterialDetailState createState() => _MaterialDetailState();
}
class _MaterialDetailState extends State<MaterialDetail> {
  int counter = 0;
  bool favorite = false;
  bool save = false;
  favoriteIcon() {
    if (favorite) {
      setState(() {
        favorite = false;
      });
    } else {
      setState(() {
        favorite = true;
      });
    }
  }
  saveIcon() {
    if(save) {
      setState(() {
        save = false;
      });
    } else {
      setState(() {
        save = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  List materialImages = [
    materialImage(context , widget.image),
    materialImage(context , widget.image2),
    materialImage(context , widget.image3),
    materialImage(context , widget.image4),
  ];
    return new Scaffold(
      backgroundColor: backgroundColor,
      body: new ListView(
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
  new GestureDetector(
    onDoubleTap: () {
      setState(() {
        favoriteIcon();
      });
    },
                    child: new Container(
                      padding: EdgeInsets.only(
                          left: 0, right: 0, bottom: 0, top: 0),
                      height: 250,
                      child: new Carousel(
                        dotBgColor: Colors.transparent,
                        dotIncreaseSize: 2,
                        dotSize: 4,
                        animationDuration: Duration(milliseconds: 300),
                        autoplayDuration: Duration(seconds: 2),
                        dotSpacing: 23,
                        autoplay: true,
                        images: materialImages,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 28,
                      width: 115,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                        color: whiteColor,
                      ),

                      child: Center(child: new Text(
                          widget.time + ' ' + widget.day,
                          style: TextStyle(fontSize: 14 , color: blackColor))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                        color: whiteColor,
                      ),

                      child: Center(
                        child: new IconButton(icon: Icon(favorite ? Icons.favorite : Icons.favorite_border , size: 23 , color: blackColor),
                          onPressed: () {
                          setState(() {
                            favoriteIcon();
                          });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(8),

                          color: whiteColor,
                        ),

                        child: Center(
  child: new IconButton(icon: Icon(save ? Icons.bookmark : Icons.bookmark_border , size: 23 , color: blackColor),
                            onPressed: () {
    setState(() {
      saveIcon();
    });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(8),

                          color: whiteColor,
                        ),

                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: new Image.asset(widget.flag),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 83,
            decoration: new BoxDecoration(
              color: whiteColor,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 38,
                      width: 123,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor,
                        border: Border.all(color: blackColor , width: 1),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new Icon(Icons.attach_money , size: 23 , color: blackColor),

                          new Text(widget.price , style: TextStyle(
                              color: blackColor , fontSize: 15)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 38,
                      width: 83,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor,
                        border: Border.all(color: blackColor , width: 1),
                      ),

                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            new Icon(Icons.bed , size: 23 , color: blackColor),
                            new Text(widget.bedroom , style: TextStyle(
                                color: blackColor , fontSize: 15)),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 38,
                      width: 83,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor,
                        border: Border.all(color: blackColor , width: 1),
                      ),

                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.bathroom , size: 23 , color: blackColor),
                            new Text(widget.bathroom , style: TextStyle(
                                color: blackColor , fontSize: 15)),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: whiteColor,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(top: 0, bottom: 0),
            child: Container(

              padding: const EdgeInsets.all(0),
              child: new Card(
                  color: whiteColor,
  child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
  new ExpandableText(
                          widget.text , style: TextStyle(
                        fontSize: 17,
                        height: 1.9,
                        color: blackColor,
                      ),
    expandText: 'More',
    expanded: false,
    textDirection: widget.language,
  ),
                    ],
                  ),
                ),
                elevation: 0,

              ),
            ),
          ),
        ],
      ),
    );
  }


  materialImage(context , String image) {
    return new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(image),
          fit: BoxFit.cover,
        ),
        color: blackColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),

    );
  }
}


