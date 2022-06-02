import 'package:flutter/material.dart';
import 'config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset =0;
  double yoffset =0;
  double scalefactor =1;
  bool isdraweropen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
        duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal:20 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (isdraweropen) IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  setState((){
                  xoffset=0;
                  yoffset=0;
                  scalefactor=1;
                  isdraweropen=false;
                  });
                  },
                  ) else IconButton( icon: Icon(Icons.menu), onPressed: () {
               setState((){
                 xoffset=250;
                 yoffset=150;
                 scalefactor=0.6;
                 isdraweropen =true;
               });
              },
              ),
              Column(
                children:  <Widget>[
                  SizedBox(height: 50,),
                      Text("Location"),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.location_on),
                            color:Colors.green[340],
                          onPressed: () {  },
                          ),
                           Text("Nepal"),
                        ],
                      ),
                    ],
                        ),
                    CircleAvatar(),
                   ],
             ),
          ),
          //How we can set up the search bar
              Container(
             // padding: EdgeInsets.fromLTRB(40, 10.0, 40.0, 10.0),//How we can set up the search bar
              child: TextField(
                  decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:primarycolor),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    prefixIcon: Icon(Icons.search,color:primarycolor),
                    hintText: "Search Members",
                    filled: true,
                  fillColor:Colors.grey,
                  ),

                  ),
                  padding: EdgeInsets.fromLTRB(40, 10.0, 40.0, 10.0),
              ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index){
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width:50,
                        child: Image.asset(categories[index]['iconpath']) ,
                      )
                    ],
                  ),
                );
              }
            )

          )
            ],
        ),
          );
  }
}
