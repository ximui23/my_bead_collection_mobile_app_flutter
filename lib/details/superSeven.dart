import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/morganite.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SuperSeven extends StatefulWidget {
  @override
  _SuperSevenState createState() => _SuperSevenState();
}

class _SuperSevenState extends State<SuperSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[400],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
            style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.purple[100], fontWeight: FontWeight.w700),
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
                AssetImage("images/products/super_seven.JPG"),
                AssetImage("images/products/super_seven_2.JPG"),
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
                color: Colors.deepPurple[200],
                child: new ListTile(
                  title: new Text(
                    "Dark Super Seven",
                      style: GoogleFonts.nothingYouCouldDo(fontSize: 30, color: Colors.deepPurple[600], fontWeight: FontWeight.w900),
//                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.deepPurple[100],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple[900]),
                  ),
                  subtitle: new Text(
                    "\n- Super seven is a combination of 7 different gemstones, which are Amethyst, Quartz, Goethite, Lepidocrocite, Cacoxenite, Smoky Quartz, Rutile"
                    "\n - Their specialty is each bead/stone has a unique infusion happens inside"
                    "\n - Their main color is purple but also has redish, brown, and clear",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.deepPurple[100],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple[900]),
                  ),
                  subtitle: new Text(
                    " \n - Super Seven combines all 7 different stones so it is a perfect stone in balancing due to the energy from 7 stones"
                        "\n - Powerful energy stone",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.deepPurple[100],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Beryl Gemstone",
                  image_src: "images/products/morganite.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => Beryl()));
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
          color: Colors.deepPurple[100],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple[800]),
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
