import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/white_moonstone.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class PeachMoonstone extends StatefulWidget {
  @override
  _PeachMoonstoneState createState() => _PeachMoonstoneState();
}

class _PeachMoonstoneState extends State<PeachMoonstone> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepOrange[200],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
          style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.white70, fontWeight: FontWeight.w700),
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.redAccent[800],
//                fontSize: 35),
//          ),
        ),
      ),),
      body: new ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            child: Container(
              height: 300.0,
              child: Image.asset(
                "images/products/peach_moonstone.JPG",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.deepOrange[100],
                child: new ListTile(
                  title: new Text(
                    "Peach Moonstone",
                    style: GoogleFonts.codystar(fontSize: 35, color: Colors.deepOrange[900], fontWeight: FontWeight.w700),
                    //style: TextStyle(fontSize: 30, color: Colors.deepOrange[900], fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.deepOrange[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange[400]),
                  ),
                  subtitle: new Text(
                    "\n- Peach Moonstone is a member of moonstone family with the color of pale orange",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.deepOrange[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange[400]),
                  ),
                  subtitle: new Text(
                    " \n - Peach moonstone helps ease depression and anger "
                        "\n - Promoting love energy, and hormonal balance"
                        "\n - Peach moonstone usually helps sensitive children for calming and balancing emotions"
                        "\n - Bringing love, power, healing and lucky",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
//          *************** Similar item *****************
          Container(
            padding: EdgeInsets.only(top: 5),
            color: Colors.deepOrange[50],
            child: new ListTile(
              title: new Text(
                "Similar Item",
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
          ),
          Container(
            height: 340.0,
            child: CategoryCard_SimilarItems(
              item_name: "White Moonstone",
              image_src: "images/products/white_moonstone.JPG",
              press: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) => WhiteMoonStone()));
              },
            ),
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
          color: Colors.deepOrange[50],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange[700]),
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

