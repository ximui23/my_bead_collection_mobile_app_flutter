import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/superSeven.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';

class StrawberryQuartz extends StatefulWidget {
  @override
  _StrawberryQuartzState createState() => _StrawberryQuartzState();
}

class _StrawberryQuartzState extends State<StrawberryQuartz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink[300],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Text(
            'Bead Lovers',
              style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.white70, fontWeight: FontWeight.w700)
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.white70,
//                fontSize: 35),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/products/strawberry_quartz.JPG"),
                  fit: BoxFit.fitWidth,
                )
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.pink[200],
                child: new ListTile(
                  title: new Text(
                    "Strawberry Quartz",
                    style: GoogleFonts.merienda(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
                    //style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.pink[50],
                child: new ListTile(
                  title: new Text("Stone Descriptions", style: TextStyle(fontSize: 20, color: Colors.pink[900]),),
                  subtitle: new Text(
                    "\n- A member of Quartz family with the color of pink"
                        "\n - The color range can be from light pink, strawberry pink to rasberry pink"
                        "\n - Can be found in Russia, Kazakhstan, and Brazil",
                    style: TextStyle(color: Colors.grey[700], fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.pink[50],
                child: new ListTile(
                  title: new Text("Stone Benefits", style: TextStyle(fontSize: 20, color: Colors.pink[900]),),
                  subtitle: new Text(
                    "\n- Strawberry Quartz helps booting physical energy"
                        "\n - Awakening consciousness and providing positive vibes"
                        "\n - Calming people who work in the fast-paced environment"
                        "\n - Enhancing intuition",
                    style: TextStyle(color: Colors.grey[700], fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.pink[50],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 20, color: Colors.pink[800], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Super Seven",
                  image_src: "images/products/super_seven.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => SuperSeven()));
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
          color: Colors.pink[50],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink[800]),
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
