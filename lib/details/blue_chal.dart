import 'package:flutter/material.dart';
import 'package:flutterappmycollection/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'blue_lab.dart';

class Blue_Chalcedony extends StatefulWidget {
  @override
  _Blue_ChalcedonyState createState() => _Blue_ChalcedonyState();
}

class _Blue_ChalcedonyState extends State<Blue_Chalcedony> {
  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[100],
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
          },
          child: Text(
            'Bead Lovers',
            style: GoogleFonts.cinzelDecorative(fontWeight: FontWeight.bold, color: Colors.blueGrey[500], fontSize: 35),
            //style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[900], fontSize: 35,),
          ),
        ),
      ),

      body: ListView(
        children: <Widget>[

          Container(
            height: size.height * 0.35,
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              image: DecorationImage(
                image: AssetImage("images/products/blue.JPG"),
                fit: BoxFit.fitWidth,
              )
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.lightBlue[100],
                child: new ListTile(
                  title: new Text(
                    "Blue Chalcedony Stones",
                    style: GoogleFonts.codystar(fontSize: 25, color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                    //style: TextStyle(fontSize: 28, color: Colors.blueGrey[800], fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.lightBlue[50],
                child: new ListTile(
                  title: new Text("Stone Descriptions", style: TextStyle(fontSize: 20, color: Colors.indigo[900]),),
                  subtitle: new Text(
                    "\n- Chalcedony can be found at the United State, Brazil, India, and some South West Asia countries"
                        "\n - The color of Chalcedony can be blue, purple, white, or grey"
                    "\n - Chalcedony is a hard stone and it is a member of Quartz family",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.lightBlue[50],
                child: new ListTile(
                  title: new Text("Stone Benefits", style: TextStyle(fontSize: 20, color: Colors.indigo[900]),),
                  subtitle: new Text(
                    "\n- Chalcedony absorbs negative energy"
                        "\n - Balancing emotions"
                        "\n - Brings happiness, kindness, and charity"
                    "\n Especially, it heals a circulatory system and enhance physical energies",
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                color: Colors.lightBlue[50],
                child: new ListTile(
                  title: new Text(
                    "Similar Item",
                    style: TextStyle(fontSize: 25, color: Colors.indigo[900], fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                height: 340.0,
                child: CategoryCard_SimilarItems(
                  item_name: "Labradorite",
                  image_src: "images/products/blue_labradorite.JPG",
                  press: (){
                    Navigator.push(context, new MaterialPageRoute(builder: (context) => BlueLabradorite()));
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
          color: Colors.lightBlue[50],
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
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo[800]),
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