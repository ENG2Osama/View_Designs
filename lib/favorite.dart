import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/homePage.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() {
    return favorite();
  }
}

class favorite extends State<Favorite> {
  List showfavot=showFavorite.values.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: TextStyle(color: Colors.pinkAccent,fontSize: 25,fontWeight:FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body:  GridView(
        physics:NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            mainAxisExtent: 253),
        children: [
          ...List.generate(

              showfavot.length,  (i) {
            return Show(
                TitleImage:showfavot[i]['title'],
                NameImage:showfavot[i]['Name'],isfavorite: true,)
            ;
          }),


        ],

      ),


    );
  }
}
