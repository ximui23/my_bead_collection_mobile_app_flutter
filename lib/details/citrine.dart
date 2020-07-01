import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/strawberry.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Citrine extends StatefulWidget {
  @override
  _CitrineState createState() => _CitrineState();
}

class _CitrineState extends State<Citrine> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.amberAccent[100],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
          style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.brown, fontWeight: FontWeight.w700)
//            style: TextStyle(fontWeight: FontWeight.bold,
//                color: Colors.lime[800],
//                fontSize: 30),
//          ),
        ),
      ),
      ),
        body: new ListView(
        children: <Widget>[
          Container(
            height: size.height * 0.40,
            decoration: BoxDecoration(
              color: Colors.amberAccent[100],
            ),
            child: Container(
              height: 300.0,
              child: Image.asset("images/products/citrine.JPG", fit: BoxFit.fitWidth,),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.yellow[200],
                child: new ListTile(
                  title: new Text(
                    "Citrine Stones",
                      style: GoogleFonts.parisienne(fontSize: 40, color: Colors.amber[800], fontWeight: FontWeight.bold),
                    //style: TextStyle(fontSize: 35, color: Colors.amber[800], fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.yellow[100],
                child: new ListTile(
                  title: new Text("Stone Descriptions", style: TextStyle(fontSize: 20, color: Colors.amber[800]),),
                  subtitle: new Text(
                    "\n- Citrine is a member of Quartz family"
                    "\n - Also known as yellow Quartz"
                        "\n - The color of Citrine can range from light to dark yellow, or golden brown",
                    style: TextStyle(color: Colors.brown, fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.yellow[100],
                child: new ListTile(
                  title: new Text("Stone Benefits", style: TextStyle(fontSize: 20, color: Colors.amber[800]),),
                  subtitle: new Text(
                    "\n- Citrine brings enery to every level of life"
                        "\n - Attracts wealth, prosperity"
                        "\n - Strengthening the intellect and balancing emotions"
                        "\n - Brings happiness, creativity, and protection",
                    style: TextStyle(color: Colors.brown, fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.yellow[100],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.amber[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Strawberry Quartz",
                  image_src: "images/products/strawberry_quartz.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => StrawberryQuartz()));
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
          color: Colors.yellow[100],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber[800]),
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