import 'package:flutter/material.dart';



class MaterialCards extends StatefulWidget {
  const MaterialCards({Key key}) : super(key: key);

  @override
  _MaterialCardsState createState() => _MaterialCardsState();
}

class _MaterialCardsState extends State<MaterialCards> {
  List listBuy = [
    {
      'title': 'کفش نایک',
      'cover': 'images/cover1.jpeg',
      'detail': 'جزئیات این محصول',
      'price': '326',
      'country': 'images/usa.ico',
      'icon': Icons.favorite_border,
      'color': Colors.redAccent,

    },
    {
      'title': 'کفش آدیداس',
      'cover': 'images/cover2.jpg',
      'detail': 'جزئیات این محصول',
      'price': '810',
      'country': 'images/france.ico',
      'icon': Icons.favorite,
      'border': 'images/cover1.jpeg',
      'color': Colors.blueGrey,

    },
    {
      'title': 'کفش پوما',
      'cover': 'images/model.jpg',
      'detail': 'جزئیات این محصول',
      'price': '28',
      'country': 'images/germany.ico',
      'icon': Icons.favorite,
      'color': Colors.amber,

    },
    {
      'title': 'کفش سی ار سون',
      'cover': 'images/model2.jpg',
      'detail': 'جزئیات این محصول',
      'price': '158.78',
      'country': 'images/iran.ico',
      'icon': Icons.favorite_border,
      'color': Colors.amber,

    },
    {
      'title': 'کفش نمیسیس',
      'cover': 'images/model3.jpg',
      'detail': 'جزئیات این محصول',
      'price': '128',
      'country': 'images/germany.ico',
      'icon': Icons.favorite,
      'color': Colors.amber,

    },
    {
      'title': 'کفش جردن',
      'cover': 'images/model4.jpg',
      'detail': 'جزئیات این محصول',
      'price': '1000',
      'country': 'images/france.ico',
      'icon': Icons.favorite_border,
      'color': Colors.amber,

    },
  ];

  String currentTitle = '';
  String currentCover = '';
  String currentCountry = '';
  String currentPrice = '';
  String currentBorder = '';
  IconData currentIcon = Icons.favorite_border;
  Color currentColor = Colors.grey;
  IconData btnIcon = Icons.play_arrow;
  bool isPlaying = false;
  bool colorTap = false;
  bool favorite = false;
  Color active = Colors.purple;
  Color inactive = Colors.white;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        margin: const EdgeInsets.only(top: 23),
        padding: const EdgeInsets.all(18),
        child: new ListView.builder(
          itemCount: listBuy.length,
          itemBuilder: (context , index) => new InkWell(
            onTap: () {
              setState(() {
                currentTitle = listBuy[index]['title'];
                currentCover = listBuy[index]['cover'];
                currentCountry = listBuy[index]['country'];
                currentIcon = listBuy[index]['icon'];
                currentPrice = listBuy[index]['price'];
                currentColor = listBuy[index]['color'];
              });
            },
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            new Container(
                              height: 100,
                              width: 100,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage(listBuy[index]['cover']),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: [
                            new Text(listBuy[index]['title'] , style: TextStyle(fontSize: 16) , textDirection: TextDirection.rtl),
                            new Text(listBuy[index]['detail'] , style: TextStyle(fontSize: 16) , textDirection: TextDirection.rtl),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Divider(),

              ],
            ),
          ),
        ),
      ),
    );

  }
}
