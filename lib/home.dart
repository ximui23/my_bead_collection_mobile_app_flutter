import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/blue_lab.dart';
import 'package:flutterappmycollection/details/indian_agate.dart';
import 'package:flutterappmycollection/details/infusion_quartz.dart';
import 'package:flutterappmycollection/details/peach_moonstone.dart';
import 'package:flutterappmycollection/details/rutilated_quartz.dart';
import 'package:flutterappmycollection/details/strawberry.dart';
import 'package:flutterappmycollection/details/superSeven.dart';
import 'package:flutterappmycollection/details/tourmaline.dart';
import 'details/white_moonstone.dart';
//import 'products.dart';
import 'details/citrine.dart';
import 'details/blue_chal.dart';
import 'details/morganite.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search.dart';
import 'package:carousel_pro/carousel_pro.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery
            .of(context)
            .size
            .height),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: size.height * 1,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                ),
              ),
//          Container(
//            height: size.height * 0.65,
//            decoration: BoxDecoration(
//              color: Colors.lightGreenAccent[100],
//            ),
//          ),

//          Container(
//            height: size.height * 0.25,
//            decoration: BoxDecoration(
//              color: Colors.amberAccent[100],
//            ),
//          ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0, bottom: 5),
                                child: Text(" Welcome 🎀\n Bead Lovers️ 📿",
                                        style: GoogleFonts.cinzelDecorative(fontSize: 41, color: Colors.indigo[900], fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Divider(
                        thickness: 3.0,
                      ),
                      Container(
                        height: 200.0,
                        width: 200.0,
                        child: Carousel(
                          images: [
                            AssetImage("images/home/b1.JPG"),
                            AssetImage("images/home/b2.JPG"),
                            AssetImage("images/home/b3.JPG"),
                            AssetImage("images/home/b4.JPG"),
                            AssetImage("images/home/b5.JPG"),
                            AssetImage("images/home/b6.JPG"),
                          ],
//              autoplay: false,
                          autoplay: true,
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 1000),
                          dotSize: 4.0,
                          indicatorBgPadding: 6.0,
                        ),
                      ),
                      Divider(
                        thickness: 3.0,
                      ),
                      Divider(),
//                      Container(
//                        margin: EdgeInsets.symmetric(vertical: 30),
//                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
//                        decoration: BoxDecoration(
//                          color: Colors.white,
//                          borderRadius: BorderRadius.circular(29.5),
//                        ),
//                        child: TextField(
//                          onTap: (){
//                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
//                          },
//                          decoration: InputDecoration(
//                            hintText: "Search",
//                            icon: Icon(Icons.search),
//                            border: InputBorder.none,
//                          ),
//                        ),
//                      ),
                      Expanded(
                        child: GridView.count(crossAxisCount: 3,
                        childAspectRatio: 0.70,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          children: <Widget>[
                            CategoryCard(
                              item_name : "Blue Chalcedony",
                              image_src: "images/products/blue.JPG",
                              press: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Blue_Chalcedony()));},
                            ),
                            CategoryCard(
                              item_name : "Citrine",
                              image_src: "images/products/citrine.JPG",
                              press: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Citrine()));},
                            ),
                            CategoryCard(
                              item_name : "Beryl",
                              image_src: "images/products/morganite.JPG",
                              press: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Beryl()));},
                            ),
                            CategoryCard(
                              item_name : "Peach Moonstone",
                              image_src: "images/products/peach_moonstone.JPG",
                              press: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => PeachMoonstone()));},
                            ),
                            CategoryCard(
                              item_name : "Rutilated Quartz",
                              image_src: "images/products/b&w_rutilated_quartz.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => RutilatedQuartz()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Strawberry Quartz",
                              image_src: "images/products/strawberry_quartz.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => StrawberryQuartz()));
                              },
                            ),
                            CategoryCard(
                              item_name : "White Moonstone",
                              image_src: "images/products/white_moonstone.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => WhiteMoonStone()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Labradorite",
                              image_src: "images/products/blue_lab.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => BlueLabradorite()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Phantom Quartz",
                              image_src: "images/products/infusion_quartz.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => InfusionQuartz()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Indian Agate",
                              image_src: "images/products/indian_agate.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => IndianAgate()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Super Seven",
                              image_src: "images/products/super_seven.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => SuperSeven()));
                              },
                            ),
                            CategoryCard(
                              item_name : "Tourmaline",
                              image_src: "images/products/tourmaline_2.JPG",
                              press: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => Tourmaline()));
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}

class CategoryCard extends StatelessWidget {
  final String image_src;
  final String item_name;
  final Function press;
  const CategoryCard({
    this.image_src,
    this.item_name,
    this.press,
    Key key,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: Colors.grey[300]
            )
          ]
        ),
        child: Material(
          color: Colors.brown[50],
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 80,
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                        child: Image.asset(image_src, fit: BoxFit.cover,)),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    color: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        item_name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.brown[900]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
