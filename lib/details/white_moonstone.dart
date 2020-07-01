import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/peach_moonstone.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteMoonStone extends StatefulWidget {
  @override
  _WhiteMoonStoneState createState() => _WhiteMoonStoneState();
}

class _WhiteMoonStoneState extends State<WhiteMoonStone> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.brown[100],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
            style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.brown[800], fontWeight: FontWeight.w700),
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.brown[800],
//                fontSize: 35),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 350.0,
            width: 100.0,
            child: Carousel(
              images: [
                AssetImage("images/products/white_moonstone.JPG"),
                AssetImage("images/products/white_moonstone2.JPG"),
              ],
                //autoplay: false,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 4.0,
              indicatorBgPadding: 6.0,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: new ListTile(
                  title: new Text(
                    "White Moonstone",
                    style: GoogleFonts.codystar(fontSize: 35, color: Colors.black, fontWeight: FontWeight.w700),
                    //style: TextStyle(fontSize: 30, color: Colors.brown[700], fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.white10,
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: new Text(
                        "\n- White Moonstone also known as Rainbow moonstone due to the blue splash on the stone",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.white10,
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: new Text(
                    " \n - Moonstone helps ease depression and anger"
                        "\n - Promoting love energy, and hormonal balance"
                        "\n - Moonstones bringing love, power, healing and lucky",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
              //          *************** Similar item *****************
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.white10,
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Peach Moonstone",
                  image_src: "images/products/peach_moonstone.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => PeachMoonstone()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}

class CategoryCard_SimilarItems extends StatelessWidget {
  final String image_src;
  final String item_name;
  final Function press;
  const CategoryCard_SimilarItems({
    this.image_src,
    this.item_name,
    this.press,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
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
          color: Colors.white10,
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 80,
                  child: Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Image.asset(image_src, fit: BoxFit.fill,)),
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown[700]),
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