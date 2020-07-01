import 'package:flutter/material.dart';
import 'package:flutterappmycollection/details/blue_chal.dart';
import 'package:flutterappmycollection/details/citrine.dart';
import 'package:flutterappmycollection/details/morganite.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final List<String> prod_names = ['Blue Chalcedony', 'Citrine', 'Morganite', 'Peach Moonstone', 'Rutilated Quartz', 'Tourmaline'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Card(
          child: Hero(
            tag: prod_names[0],
            child: Material(
              child: InkWell(
                onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Blue_Chalcedony()));},
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/products/blue.JPG"),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Blue Chalcedony Beads', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: Hero(
            tag: prod_names[1],
            child: Material(
              child: InkWell(
                onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Citrine()));},
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/products/citrine.JPG"),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Citrine Beads', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Card(
          child: Hero(
            tag: prod_names[2],
            child: Material(
              child: InkWell(
                onTap: (){Navigator.push(context, new MaterialPageRoute(builder: (context) => Citrine()));},
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("images/products/morganite.JPG"),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('Morganite Beads', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
//        Card(
//          child: Hero(
//            tag: prod_names[2],
//            child: Material(
//              child: InkWell(
//                onTap: (){
//                  Navigator.push(context, new MaterialPageRoute(builder: (context) => Morganite()));
//                },
//                child: ListTile(
//                  leading: new Image.asset("images/products/morganite.JPG"),
//                  title: new Text(prod_names[2]),
//
//                ),
//              ),
//            ),
//          )
//        ),
      ],
    );
  }
}
