
import 'package:batch3week3/pagewalapaper/bowling.dart';
import 'package:batch3week3/pagewalapaper/golf.dart';
import 'package:batch3week3/pagewalapaper/tennis.dart';

import 'football.dart';
import 'package:flutter/material.dart';

import 'basket.dart';
import 'volley.dart';



class Walpaper extends StatefulWidget {
  @override
  _WalpaperState createState() => _WalpaperState();
}

class _WalpaperState extends State<Walpaper> with SingleTickerProviderStateMixin {

  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.white,
            title: new TabBar(
                isScrollable: true,
                controller: _tabController,

                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 15.0),
                    insets: EdgeInsets.symmetric(horizontal:10.0)
                ),
                unselectedLabelColor: Colors.lightGreen,
                tabs: <Tab>[
                  new Tab(icon: new Image.asset('gambar/pilihan/football.png')),
                  new Tab(icon: new Image.asset('gambar/pilihan/basketball.png')),
                  new Tab(icon: new Image.asset('gambar/pilihan/volleyball.png')),
                  new Tab(icon: new Image.asset('gambar/pilihan/tennis.png')),
                  new Tab(icon: new Image.asset('gambar/pilihan/bowling.png')),
                  new Tab(icon: new Image.asset('gambar/pilihan/golf.png')),
                ]
            )
        ),
        backgroundColor: Colors.grey,
        body: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              Football(),
              Basket(),
              Volley(),
              Tennis(),
              Bowling(),
              Golf(),
            ]
        ),     ),
    );
  }
}