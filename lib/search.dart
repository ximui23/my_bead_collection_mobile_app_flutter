//import 'package:flutter/material.dart';
//import 'home.dart';
//import 'package:google_fonts/google_fonts.dart';
//
//class SearchItems extends StatefulWidget {
////   List<String> items = [
////    "blue chalcedony",
////    "citrine",
////    "beryl",
////    "peach moonstone",
////    "white moonstone",
////    "strawberry quartz",
////    "black and white rutilated quartz",
////    "labradorite",
////    "phantom quartz",
////    "indian agate",
////    "super seven",
////    "tourmaline"
////  ];
////   SearchItems({Key key, @required this.items}) : super (key:key);
//
//  @override
//  _SearchItemsState createState() => _SearchItemsState();
//}
//
//class _SearchItemsState extends State<SearchItems> {
//   final List<String> duplicatedItems = [
//     "blue chalcedony",
//     "citrine",
//     "beryl",
//     "peach moonstone",
//     "white moonstone",
//     "strawberry quartz",
//     "black and white rutilated quartz",
//     "labradorite",
//     "phantom quartz",
//     "indian agate",
//     "super seven",
//     "tourmaline"
//   ];
//
//   var items = List<String>();
//
//   TextEditingController search_data_controller = TextEditingController();
//
//   @override
//   void initState() {
//     items.addAll(duplicatedItems);
//     super.initState();
//   }
//
//   void filterSearchResult(String query){
//     List<String> dummySearchList = List<String>();
//     dummySearchList.addAll(duplicatedItems);
//     if(query.isNotEmpty)
//       {
//         List<String> dummyListData = List<String>();
//         dummySearchList.forEach((item) {
//           if(item.contains(query))
//             {
//               dummyListData.add(item);
//             }
//         });
//         setState(() {
//           items.clear();
//           items.addAll(dummyListData);
//         });
//         return;
//       }
//     else{
//       setState(() {
//         items.clear();
//         items.addAll(duplicatedItems);
//       });
//     }
//   }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: new AppBar(
//        elevation: 0.0,
//        backgroundColor: Colors.green[800],
//        title: InkWell(
//          onTap: () {
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context) => new HomePage()));
//          },
//          child: Text(
//            'Bead Lovers',
//            style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.white70, fontWeight: FontWeight.w700),
////            style: TextStyle(
////                fontWeight: FontWeight.bold,
////                color: Colors.white,
////                fontSize: 35),
//          ),
//        ),
//      ),
//      body: Container(
//        child: Column(
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: TextField(
//                onChanged: (value) {
//                  filterSearchResult(value);
//                },
//                controller: search_data_controller,
//                decoration: InputDecoration(
//                  labelText: "Search",
//                  hintText: "Search",
//                  prefixIcon: Icon(Icons.search),
//                  border: (OutlineInputBorder(
//                    borderRadius: BorderRadius.all(Radius.circular(25.0))
//                  )),
//                ),
//              ),
//            ),
//            Expanded(
//              child: ListView.builder(itemBuilder: ),
//            )
//          ],
//        ),
//      ),
//
//    );
//  }
//}

import 'package:flutter/material.dart';
import 'home.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
//        title: 'Flutter Demo',
//        theme: new ThemeData(
//        primarySwatch: Colors.blue,
//    ),
      home: new MyHomePage(title: 'ListView with Search'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

//  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
//  var items = List<String>();

  final List<String> duplicatedItems = [
     "blue chalcedony",
     "citrine",
     "beryl",
     "peach moonstone",
     "white moonstone",
     "strawberry quartz",
     "black and white rutilated quartz",
     "labradorite",
     "phantom quartz",
     "indian agate",
     "super seven",
     "tourmaline"
   ];
  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicatedItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicatedItems);
    if(query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if(item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicatedItems);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[200],
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          },
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.deepPurple,
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new HomePage()));
                },
              ),
              Text(
                '    Bead Lovers',
                style: GoogleFonts.cinzelDecorative(fontSize: 35, color: Colors.deepPurple[800], fontWeight: FontWeight.w700),
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Colors.white,
//                fontSize: 35),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
