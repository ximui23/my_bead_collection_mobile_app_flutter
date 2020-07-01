import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/indian_agate.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Tourmaline extends StatefulWidget {
  @override
  _TourmalineState createState() => _TourmalineState();
}

class _TourmalineState extends State<Tourmaline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
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
                AssetImage("images/products/tourmaline.JPG"),
                AssetImage("images/products/tourmaline_2.JPG"),
                AssetImage("images/products/tourmaline_4.JPG"),
                AssetImage("images/products/tourmaline_3.JPG"),
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
                color: Colors.green[300],
                child: new ListTile(
                  title: new Text(
                    "Multicolor Tourmaline",
                      style: GoogleFonts.quintessential(fontSize: 30, color: Colors.green[900], fontWeight: FontWeight.w700),
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
                    "\n- Tourmaline is a semi-precious stone."
                    "\n - This gemstone has a variety of colors: Black Tourmaline (Schori), "
                        " Purple Tourmaline (Siberite), Pink (Rubellite), Light blue - blue - green (Indicolite), "
                        "Green (Verdilite), Brown (Dravite), and Multicolored (Liddicoatite) ",
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
                    " \n - Multicolor Tourmaline encourage understanding and self-confidence"
                        "\n - Enhancing energy flow and balances yin and yang of our body"
                    "\n - Replacing negativity with positivity and optimistic"
                        "\n - Improving hand or eye coordination",
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
                    style: TextStyle(fontSize: 20, color: Colors.green[900], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Indian Agate",
                  image_src: "images/products/indian_agate_3.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => IndianAgate()));
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[900]),
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