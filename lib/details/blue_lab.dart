import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/infusion_quartz.dart';
import 'package:flutterappmycollection/details/peach_moonstone.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class BlueLabradorite extends StatefulWidget {
  @override
  _BlueLabradoriteState createState() => _BlueLabradoriteState();
}

class _BlueLabradoriteState extends State<BlueLabradorite> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
              style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.white38, fontWeight: FontWeight.w700)
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.white38,
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
                AssetImage("images/products/blue_lab.JPG"),
                AssetImage("images/products/blue_labradorite_2.JPG"),
              ],
                autoplay: false,
//              autoplay: true,
//              animationCurve: Curves.fastOutSlowIn,
//              animationDuration: Duration(milliseconds: 2000),
              dotSize: 4.0,
              indicatorBgPadding: 6.0,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.blueGrey[200],
                child: new ListTile(
                  title: new Text(
                    "Labradorite",
                    style: GoogleFonts.codystar(fontSize: 30, color: Colors.blue[900], fontWeight: FontWeight.bold),

                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.blueGrey[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Descriptions",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[900], fontWeight: FontWeight.w500),
                  ),
                  subtitle: new Text(
                    "\n - A member of feldspar mineral, which refract the light and give out a beautiful blue flash"
                        "\n - Labradorite can be found in Finland, Scandianvia, Madagascar, Mexico and the US",
                    style: TextStyle(color: Colors.blueGrey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.blueGrey[50],
                child: new ListTile(
                  title: new Text(
                    "Stone Benefits",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[900], fontWeight: FontWeight.w500),
                  ),
                  subtitle: new Text(
                    " \n - Labradorite is a protection from negativity"
                        "\n - Booting the spiritual mentality"
                        "\n - Encourage to accept challenges and responsibilities",
                    style: TextStyle(color: Colors.blueGrey[800], fontSize: 18),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.blueGrey[50],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.blueGrey[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Phantom Quartz",
                  image_src: "images/products/infusion_quartz.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => InfusionQuartz()));
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
          color: Colors.blueGrey[50],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey[800]),
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