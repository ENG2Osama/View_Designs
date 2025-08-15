import 'dart:convert';

import 'package:ecommerce_flutter/Setting.dart';
import 'package:ecommerce_flutter/favorite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:http/http.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => homePage();
}
GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
class homePage extends State<HomePage> {

  List show = [
    {'Title': 'VERDN', 'Name': 'Image/VERDN.jpg'},
    {'Title': 'REWAQ', 'Name': 'Image/REWAQ.jpg'},
    {'Title': 'CAAS', 'Name': 'Image/CAAS.jpg'},
    {'Title': 'MR.CRISPO', 'Name': 'Image/MR.CRISPO.jpg'},
    {'Title': 'HAYYA', 'Name': 'Image/HAYYA.jpg'},
    {'Title': 'SPACENEST', 'Name': 'Image/SPACENEST.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 110,
              width: 230,
              color: Colors.blue[50],
              child: ListTile(
                tileColor: Colors.blue[100],
                title: Text('ENG\Osama Ahmed'),
                subtitle: Text('SE'),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'Image/1.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.white,
              child: ListTile(
                title: Text('Main'),
                leading: Icon(Icons.home),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favorite()));
              },
              color: Colors.white,
              child: ListTile(
                title: Text('Favarites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Setting()));
              },
              color: Colors.white,
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.telegram_sharp)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.map)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.maps_ugc)),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 19, right: 10),
                  child: TextField(
                    onTap: () {
                      showSearch(context: context, delegate: searchdelegate());
                    },
                    decoration: InputDecoration(
                        hintText: 'search',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey[200]),
                  ),
                )),
                Container(
                    margin: EdgeInsets.only(right: 7),
                    child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        icon: Icon(Icons.menu),
                        iconSize: 35))
              ],
            ),
            Container(
              margin: EdgeInsets.all(19),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19, right: 19),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.laptop_chromebook_sharp),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'Laptob',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.mobile_friendly_outlined),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'mobile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.battery_4_bar),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'Battery',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.woman),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'wonam',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.man),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'man',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: IconButton(
                            onPressed: () {
                              //new Pagw
                            },
                            icon: Icon(Icons.laptop_chromebook_sharp),
                            iconSize: 36,
                          ),
                        ),
                        Text(
                          'Laptob',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GridView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 7,
                  crossAxisSpacing: 7,
                  mainAxisExtent: 253),
              children: [
                ...List.generate(show.length, (i) {
                  return Show(
                      TitleImage: show[i]['Title'], NameImage: show[i]['Name']);
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class searchdelegate extends SearchDelegate {
  List username = ['osama', 'ahmed', 'ali', 'mhomed', 'asem', 'mansor'];
  List? usernamef;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.keyboard_backspace_sharp));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Result:$query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == '') {
      return ListView.builder(
          itemCount: username.length,
          itemBuilder: (context, i) {
            return Card(
              child: ListTile(
                title: Text(username[i]),
              ),
            );
          });
    } else {
      usernamef = username.where((element) => element.contains(query)).toList();

      return ListView.builder(
          itemCount: usernamef!.length,
          itemBuilder: (context, i) {
            return InkWell(
              onTap: () {
                showResults(context);
              },
              child: Card(
                child: ListTile(
                  title: Text(usernamef![i]),
                ),
              ),
            );
          });
    }
  }
}

class BuildButton extends StatelessWidget {
  final BuildContext context;
  final String text;
  final VoidCallback onClick;

  const BuildButton({
    Key? key,
    required this.context,
    required this.text,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: SizedBox(
            width: double.infinity,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

Map showFavorite = {};

class Show extends StatefulWidget {
  String? TitleImage;
  String? NameImage;
  bool isfavorite = false;
  Show(
      {super.key,
      required this.TitleImage,
      required this.NameImage,
      this.isfavorite = false});
  @override
  State<Show> createState() {
    return show();
  }
}

class show extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: (){
        scaffoldKey.currentState!.showBottomSheet((context) => Container(
          height: 220,
          color: Colors.blue[100],
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text('View'),
                  leading: Icon(Icons.remove_red_eye),

                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Favorite'),
                  leading: Icon(Icons.favorite),

                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Delete'),
                  leading: Icon(Icons.delete),

                ),
              )
            ],
          ),
        ));

      },
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          borderOnForeground: false,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                        width: 160,
                        height: 140,
                        child: Image.asset(
                          widget.NameImage!,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                        top: 3,
                        right: 3,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.isfavorite = !widget.isfavorite;
                                if (widget.isfavorite)
                                  showFavorite.addAll({
                                    widget.TitleImage: {
                                      'title': widget.TitleImage,
                                      'Name': widget.NameImage
                                    }
                                  });
                                else
                                  showFavorite.remove(widget.TitleImage);
                              });
                            },
                            icon: widget.isfavorite
                                ? Icon(Icons.favorite, color: Colors.red)
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.black,
                                  ),
                          ),
                        )),
                  ],
                ),
                Text(
                  widget.TitleImage!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mohmmed saeed',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                ),
                Text('@tfaselart',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[400]))
              ],
            ),
          ),),
    );
  }
}
