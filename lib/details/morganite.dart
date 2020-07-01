import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/citrine.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';

class Beryl extends StatefulWidget {
  @override
  _BerylState createState() => _BerylState();
}

class _BerylState extends State<Beryl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal[200],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
              style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.redAccent[500], fontWeight: FontWeight.w700)
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.redAccent[800],
//                fontSize: 35),
          ),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            child: Container(
              height: 400.0,
              child: Image.asset(
                "images/products/morganite.JPG",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.teal[100],
                child: new ListTile(
                  title: new Text(
                    "Beryl Stones",
                    style: GoogleFonts.nothingYouCouldDo(fontSize: 35, color: Colors.teal[600], fontWeight: FontWeight.w700),
//                    style: TextStyle(fontSize: 30, color: Colors.pink, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.teal[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.teal[700]),
                  ),
                  subtitle: new Text(
                    "\n- Beryl has multicolor due to the varieties of stones: "
                    "\n    Emerald: green"
                    "\n    Morganite: pink - orange"
                    "\n    Aquamarine: greenish - blue"
                    "\n    Heliodor: yellow"
                    "\n    Red Beryl: red",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.teal[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.teal[700]),
                  ),
                  subtitle: new Text(
                    " \n - Beryl helps reduce stress "
                    "\n - Enhancing encourage and relaxing the mind"
                    "\n - Improving self-confidence and realizing self-potential"
                    "\n - Bringing love, compassion, empathy from the power of Morganite",
                    style: TextStyle(color: Colors.brown, fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.teal[50],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.teal[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Citrine",
                  image_src: "images/products/citrine.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Citrine()));
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
          color: Colors.teal[50],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal[700]),
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
