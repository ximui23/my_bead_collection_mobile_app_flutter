import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/tourmaline.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class IndianAgate extends StatefulWidget {
  @override
  _IndianAgateState createState() => _IndianAgateState();
}

class _IndianAgateState extends State<IndianAgate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green[800],
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
//                color: Colors.white,
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
                AssetImage("images/products/indian_agate.JPG"),
                AssetImage("images/products/indian_agate_2.JPG"),
                AssetImage("images/products/indian_agate_3.JPG"),
                AssetImage("images/products/indian_agate4.JPG"),
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
                color: Colors.green[400],
                child: new ListTile(
                  title: new Text(
                    "Indian Agate",
                      style: GoogleFonts.petitFormalScript(fontSize: 30, color: Colors.teal[50], fontWeight: FontWeight.w900),
//                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.green[100],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.green[900]),
                  ),
                  subtitle: new Text(
                    "\n- A member of Agate and from the name we know it is from India"
                    "\n - Each stone/bead has a unique color and their colors range is various"
                    "\n - The main colors are greenish - blueish, can also have purple, red, yellowish",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.green[100],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.green[900]),
                  ),
                  subtitle: new Text(
                    " \n - Indian Agate is a powerful healing stone, and good protection stone"
                        "\n - Promoting positive thought and energy"
                        "\n - It is a helpful stone for meditation",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.green[100],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.green[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Tourmaline Gemstones",
                  image_src: "images/products/tourmaline_4.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Tourmaline()));
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
          color: Colors.green[100],
          child: InkWell(
            onTap: press,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 80,
                  child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Image.asset(image_src, fit: BoxFit.fitWidth,)),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    width: 450,
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        item_name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[800]),
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