import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/blue_chal.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class RutilatedQuartz extends StatefulWidget {
  @override
  _RutilatedQuartzState createState() => _RutilatedQuartzState();
}

class _RutilatedQuartzState extends State<RutilatedQuartz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[300],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
            style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
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
                AssetImage("images/products/b&w_rutilated_quartz.JPG"),
                AssetImage("images/products/b&w_rutilated_quartz2.JPG"),
              ],
//              autoplay: false,
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
                color: Colors.blueGrey[100],
                child: new ListTile(
                  title: new Text(
                    "Black and White Rutilated Quartz",
                      style: GoogleFonts.codystar(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700),
//                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.grey[200],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.grey[900]),
                  ),
                  subtitle: new Text(
                    "\n- Two kinds of Black Rutilated Quartz: "
                    "\n   + One mix with Black Titanium Dioxide, this one is a rare gemstones"
                    "\n   + Other one mix with Black Tourmaline, this is more popular",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.grey[200],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.grey[900]),
                  ),
                  subtitle: new Text(
                    " \n - Helps release fears and anxiety"
                        "\n - Promoting positive energy and push out negative thoughts"
                        "\n - Encourage to accept challenges and responsibilities",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.grey[200],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.grey[900], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Blue Chaceldony",
                  image_src: "images/products/blue.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Blue_Chalcedony()));
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
          color: Colors.grey[200],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[900]),
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