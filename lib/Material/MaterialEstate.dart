import 'package:carousel_pro/carousel_pro.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/Material/MaterialDetail.dart';
import 'package:shopping/Material/MaterialPage.dart';
import 'package:shopping/Material/MaterialColor.dart';
import 'package:shopping/Material/MaterialCards.dart';


class MaterialEstate extends StatefulWidget {
  const MaterialEstate({Key key}) : super(key: key);

  @override
  _MaterialEstateState createState() => _MaterialEstateState();
}

class _MaterialEstateState extends State<MaterialEstate> with SingleTickerProviderStateMixin {



  List listCar = [
    {
      'label': 'LEXUS',
      'title': '2015 RC 350',
      'cover': 'images/1.webp',
      'price': '9,890',
      'time': '19',
      'day': 'Hours ago',
      'image2': 'images/1.webp',
      'image3': 'images/1.webp',
      'image4': 'images/1.webp',
      'flag': 'images/japan.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'FORD',
      'title': 'Ford Plantium',
      'cover': 'images/2.png',
      'price': '79,998',
      'time': '23',
      'day': 'Hours ago',
      'image2': 'images/2.png',
      'image3': 'images/2.png',
      'image4': 'images/2.png',
      'flag': 'images/usa.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'TOYOTA',
      'title': '2020 Camry LE',
      'cover': 'images/3.png',
      'price': '22,998',
      'time': '23',
      'day': 'Hours ago',
      'image2': 'images/3.png',
      'image3': 'images/3.png',
      'image4': 'images/3.png',
      'flag': 'images/usa.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'FORD',
      'title': '2014 Flex SEL',
      'cover': 'images/4.png',
      'price': '18,998',
      'time': '23',
      'day': 'Hours ago',
      'image2': 'images/4.png',
      'image3': 'images/4.png',
      'image4': 'images/4.png',
      'flag': 'images/usa.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'MC BENZ',
      'title': '2018 C300',
      'cover': 'images/5.png',
      'price': '30,998',
      'time': '23',
      'day': 'Hours ago',
      'image2': 'images/5.png',
      'image3': 'images/5.png',
      'image4': 'images/5.png',
      'flag': 'images/germany.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
  ];
  List listEstate = [
    {
      'label': 'پیراهن مردانه ناوالس',
      'title': 'پیراهن مردانه ناوالس',
      'cover': 'estate/usa.webp',
      'price': '1,895,000',
      'time': '16',
      'day': 'Hours ago',
      'image2': 'estate/usa5.webp',
      'image3': 'estate/usa6.webp',
      'image4': 'estate/usa7.webp',
      'flag': 'images/usa.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'پیراهن مردانه ناوالس',
      'title': 'تیشرت مردانه زی سا',
      'cover': 'estate/model.jpg',
      'price': '187,500',
      'time': '58',
      'day': 'minutes ago',
      'image2': 'estate/model3.jpg',
      'image3': 'estate/model4.jpg',
      'image4': 'estate/model5.jpg',
      'flag': 'images/germany.ico',
      'bedroom': '3',
      'bathroom': '2',
      'text': 'Tasteful remodel of this beautiful home includes a new kitchen with granite countertops, a glass subway backsplash, new stainless steel appliances, beautiful wide plank laminate flooring, upgraded custom interior paint job, updated vanity and a new shower! This charming 2-bedroom cottage has a bonus cozy heated sunroom where you can sip your coffee and read a good book! ',
      'language': TextDirection.ltr,
    },
/// ........................................................................................
    {
      'label': 'پیراهن مردانه ناوالس',
      'title': 'پیراهن مردانه ناوالس',
      'cover': 'estate/model6.jpg',
      'price': '231,999',
      'time': '23',
      'day': 'Hours ago',
      'image2': 'estate/usa5.webp',
      'image3': 'estate/usa6.webp',
      'image4': 'estate/usa7.webp',
      'flag': 'images/france.ico',
      'bedroom': '5',
      'bathroom': '1',
      'text': 'Das 2016 neu erbaute Haus in der Bodelschwinghstraße 1a liegt in einer kurzen Sackgasse, die viel Ruhe garantiert. Sowohl die Qualität der ausgewählten Materialien als auch die Konstruktion sind unübertroffen. Äußerst hochwertige Fenster, durchdachte Grundrisse, Boden- und Wandbeläge ausgewählter Qualität und makellose Verarbeitung machen diese Immobilie zu einem besonderen Zuhause. Über den Vorgarten und durch die einbruchhemmende Haustür gelangt man in den repräsentativen Eingangsbereich, von dem aus die sternförmige Küche (inklusive neuer Einbauküche), ein Gästezimmer, ein Duschbad und ein großzügiger Wohn-Essbereich kann erreicht werden. Im lichtdurchfluteten Wohnzimmer sorgt der Kamin für eine angenehme Atmosphäre und der Blick in den gepflegten Garten tut sein Übriges, damit sich die neuen Besitzer rundum wohlfühlen. Die direkt vom Wohnzimmer aus begehbare Sonnenterrasse liegt höher als der Garten, auf Ebene des Erdgeschosses. Der Garten ist über eine Treppe zu erreichen, hier befindet sich ein Gartenhaus und die Versorgung mit Brennholz.',
      'language': TextDirection.ltr,
    },
    {
      'label': 'پیراهن مردانه ناوالس',
      'title': 'تیشرت مردانه زی سا',
      'cover': 'estate/usa8.webp',
      'price': '300,150',
      'time': '8',
      'day': 'minutes ago',
      'image2': 'estate/model3.jpg',
      'image3': 'estate/model4.jpg',
      'image4': 'estate/model5.jpg',
      'flag': 'images/japan.ico',
      'bedroom': '2',
      'bathroom': '1',
      'text': 'Tasteful remodel of this beautiful home includes a new kitchen with granite countertops, a glass subway backsplash, new stainless steel appliances, beautiful wide plank laminate flooring, upgraded custom interior paint job, updated vanity and a new shower! This charming 2-bedroom cottage has a bonus cozy heated sunroom where you can sip your coffee and read a good book! ',
      'language': TextDirection.ltr,
    },
  ];
  String currentTitle = '';
  String currentCover = '';
  String currentCountry = '';
  String currentPrice = '';
  String currentBed = '';
  bool currentBorder = false;
  IconData currentIcon = Icons.favorite_border;
  Color currentColor = Colors.grey;
  bool isPlaying = false;
  bool colorTap = false;
  bool favorite = false;
  bool changeGrid = false;
  bool changeView = false;
  Color active = Colors.purple;
  Color inactive = Colors.white;
  TabController tabController;

  changeGridList() {
    if (changeGrid) {
      setState(() {
        changeGrid = false;
      });
    } else {
      setState(() {
        changeGrid = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new SafeArea(
        child: new Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    new Container(
                      height: 200,
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage(currentCover),
                          fit: BoxFit.cover,
                        ),
                        color: blackColor,
                      ),
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: new Container(
                            height: 32,
                            width: 32,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: currentCountry.isNotEmpty ? new Image
                                  .asset(currentCountry) : new Icon(Icons.flag),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 32,
                    width: 115,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: blackColor, width: 1),
                    ),

                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          new Icon(Icons.attach_money , size: 23 , color: blackColor),

                          new Text(currentPrice.isNotEmpty
                              ? currentPrice
                              : '-----------', style: TextStyle(
                              color: blackColor, fontSize: 15),
                          textDirection: TextDirection.rtl),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            new TabBar(
              onTap: (index) {
                setState(() {
                  changeGridList();
                });
              },
              controller: tabController,
              indicatorColor: Colors.grey[400],
              unselectedLabelColor: Colors.grey[400],
              labelColor: blackColor,
              tabs: [
                new Tab(
                  child: new Text('estate'.toUpperCase(),
                      style: TextStyle(fontSize: 15 , letterSpacing: 5)),
                ),
                new Tab(
                  child: new Text(
                      'car'.toUpperCase(),
                      style: TextStyle(fontSize: 15 , letterSpacing: 5)),
                ),
              ],
            ),
            new Container(
              height: 520,
              child: new TabBarView(
                controller: tabController,
                children: [
                  // estate
                  changeGrid
                      ? expandedCardGrid(listEstate , true)
                      : expandedCard(
                      listEstate , 'price'),
                  // car
                  changeGrid
                      ? expandedCardGrid(listCar , false)
                      : expandedCard(
                      listCar , 'title'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  expandedCard(list , label) {
    return new Expanded(
      child: new Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(15),
        child: new GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) =>
          new InkWell(
            splashColor: Colors.white,
            highlightColor: Colors.white,
            onLongPress: () {
              setState(() {
                currentTitle = list[index]['text'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['flag'];
                currentPrice = list[index]['price'];
                currentBed = list[index]['bedroom'];
              });
            },
            onTap: () {
              setState(() {
                Get.to(new MaterialDetail(
                    image: list[index]['cover'],
                    time: list[index]['time'],
                    day: list[index]['day'],
                    image2: list[index]['image2'],
                    image3: list[index]['image3'],
                    image4: list[index]['image4'],
                    price: list[index]['price'],
                    text: list[index]['text'],
                    flag: list[index]['flag'],
                    title: list[index]['title'],
                    bathroom: list[index]['bathroom'],
                    bedroom: list[index]['bedroom'],
                    language: list[index]['language'],
                    label: list[index]['label'],
                ));
                currentTitle = list[index]['text'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['flag'];
                currentPrice = list[index]['price'];
                currentBed = list[index]['bedroom'];
              });
            },
            child: new Stack(
              alignment: Alignment.bottomRight,
              children: [
                new Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: new Card(
                            elevation: 8,
                            child: Container(
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white,
                              ),
                              child: new Container(
                                height: 150,
                                width: 200,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(list[index]['cover']),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        new Divider(thickness: 1),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
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
                            child: new Image.asset(list[index]['flag']),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 25,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(8),

                      color: whiteColor,
                    ),
  child: Center(child: new Text(list[index][label])),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
//           new InkWell(
//             splashColor: Colors.white,
//             highlightColor: Colors.white,
//             onLongPress: () {
//               setState(() {
//                 currentTitle = list[index]['text'];
//                 currentCover = list[index]['cover'];
//                 currentCountry = list[index]['flag'];
//                 currentPrice = list[index]['price'];
//                 currentBed = list[index]['bedroom'];
//               });
//             },
//             onTap: () {
//               setState(() {
//                 Get.to(new MaterialDetail(
//                     image: list[index]['cover'],
//                     time: list[index]['time'],
//                     day: list[index]['day'],
//                     image2: list[index]['image2'],
//                     image3: list[index]['image3'],
//                     image4: list[index]['image4'],
//                     price: list[index]['price'],
//                     text: list[index]['text'],
//                     flag: list[index]['flag'],
//                     title: list[index]['title'],
//                     bathroom: list[index]['bathroom'],
//                     bedroom: list[index]['bedroom'],
//                     language: list[index]['language'],
//                 ));
//               });
//             },
//             child: new Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: Container(
//                     decoration: new BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.white,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Stack(
//                           alignment: Alignment.topRight,
//                           children: [
//                             new Container(
//                               height: 100,
//                               width: 100,
//                               decoration: new BoxDecoration(
//                                 image: new DecorationImage(
//                                   image: new AssetImage(list[index]['cover']),
//                                   fit: BoxFit.cover,
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//
//                           ],
//                         ),
//                         Container(
//                           height: 83,
//                           width: 150,
//                           color: Colors.white,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               new Text(
//                                 list[index]['title'],
//                                 style: TextStyle(
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.bold,
//                                   letterSpacing: 5,
//                                 ),
//                                 textDirection: TextDirection.ltr,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(8),
//                                 child: new Text(
//                                     list[index]['price'] + ' تومان',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                     ),
//                                     textDirection: TextDirection.rtl),
//                               ),
//
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 new Divider(),
//
//               ],
//             ),
//           ),
  expandedCardGrid(list , bool outIcon) {
    return new Expanded(
      child: new Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(15),
        child: new ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
  final List estateItem = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(list[index]['price'] , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold)),
        new Icon(Icons.attach_money , size: 20),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(list[index]['bathroom'] , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold)),
        new Icon(Icons.bathroom , size: 20),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(list[index]['bedroom'] , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold)),
        new Icon(Icons.bed , size: 20),
      ],
    ),
  ];
  final List carItem = [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Text(list[index]['price'] , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold)),
        new Icon(Icons.attach_money , size: 20),
      ],
    ),
    Center(child: new Text(list[index]['label'] , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold))),
  ];
          return new InkWell(
            splashColor: Colors.white,
            highlightColor: Colors.white,
            onLongPress: () {
              setState(() {
                currentTitle = list[index]['text'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['flag'];
                currentPrice = list[index]['price'];
                currentBed = list[index]['bedroom'];
              });
            },
            onTap: () {
              setState(() {
                Get.to(new MaterialDetail(
                  image: list[index]['cover'],
                  time: list[index]['time'],
                  day: list[index]['day'],
                  image2: list[index]['image2'],
                  image3: list[index]['image3'],
                  image4: list[index]['image4'],
                  price: list[index]['price'],
                  text: list[index]['text'],
                  flag: list[index]['flag'],
                  title: list[index]['title'],
                  bathroom: list[index]['bathroom'],
                  bedroom: list[index]['bedroom'],
                  language: list[index]['language'],
                ));
                currentTitle = list[index]['text'];
                currentCover = list[index]['cover'];
                currentCountry = list[index]['flag'];
                currentPrice = list[index]['price'];
                currentBed = list[index]['bedroom'];
              });
            },
            child: new Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white,
                        ),
                        child: new Container(
                          height: 50,
                          width: 400,
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage(list[index]['cover']),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ),
                    ),
                    new Divider(thickness: 1),
                  ],
                ),
  Padding(
    padding: const EdgeInsets.all(23),
    child: new Container(
      height: 23,
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
    child: Center(child: new Carousel(
      dotBgColor: Colors.white.withOpacity(0.2),
      autoplay: true,
      showIndicator: false,
      overlayShadow: false,
      dotColor: Colors.transparent,
      dotIncreasedColor: Colors.transparent,
      overlayShadowColors: Colors.transparent,
      images: outIcon ? estateItem : carItem,
    )),
    ),
  ),
              ],
            ),
          );
          },
        ),
      ),
    );
  }
}







