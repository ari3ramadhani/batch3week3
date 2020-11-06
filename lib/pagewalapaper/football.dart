import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'detail_custom_grid_view.dart';

class Football extends StatefulWidget {
  @override
  _FootballState createState() => _FootballState();
}

class _FootballState extends State<Football> {
  //deklarasi data list
  List<Container> daftarFootball = new List();
  var itemFootball = [
    {
      "nama": "Gulai bola1",
      "gambar": "bola1.jpg",
      "Keterangan": "Ini Makanan Gulai Banak"
    },
    {
      "nama": "Kalio bola2",
      "gambar": "bola2.jpg",
      "Keterangan": "Ini Makanan Kalio Dagiang"
    },
    {
      "nama": "Kalio bola3",
      "gambar": "bola3.jpg",
      "Keterangan": "Ini Makanan Kalio Jariang"
    },
    {
      "nama": "bola4 Sagu",
      "gambar": "bola4.jpg",
      "Keterangan": "Ini Makanan Lompong Sagu"
    },
    {
      "nama": "Sala bola5",
      "gambar": "bola5.jpg",
      "Keterangan": "Ini Makanan Sala Lauk"
    },
    {
      "nama": "Soto bola6",
      "gambar": "bola6.jpg",
      "Keterangan": "Ini Makanan Soto Padang"
    },
    {
      "nama": "bola7 Jariang",
      "gambar": "bola7.jpg",
      "Keterangan": "Ini Makanan Kalio Jariang"
    },
    {
      "nama": "bola8 Sagu",
      "gambar": "bola8.jpg",
      "Keterangan": "Ini Makanan Lompong Sagu"
    },
    {
      "nama": "bola9 Lauk",
      "gambar": "bola9.jpg",
      "Keterangan": "Ini Makanan Sala Lauk"
    },
    {
      "nama": "bola10 Lauk",
      "gambar": "bola10.jpg",
      "Keterangan": "Ini Makanan Sala Lauk"
    },
  ];

  //method
  _buatDataListMakanan() async {
    for (var i = 0; i < itemFootball.length; i++) {
      final dataFootball = itemFootball[i]; //variable untuk data makanan
      final String gambarFootball = dataFootball["gambar"];
      daftarFootball.add(new Container(
        child: InkWell(
          onTap: () {
            //pindah ke detail
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PageDetailCustomGridview(
                          nama: dataFootball["nama"],
                          gambar: gambarFootball,
                          keterangan: dataFootball["Keterangan"],
                        )));
          },
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.asset(
                        'gambar/bola/$gambarFootball',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              // Text(
              //   dataFootball['nama'],
              //   style: TextStyle(
              //       fontSize: 14.0,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.deepOrange),
              // )
            ],
          ),
        ),
      ));
    }
  }

  //proses background
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataListMakanan();
  }

  //menampilkan ke view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          title: Center(child: Text('- - Football - -')),
          backgroundColor: Colors.black,
        ),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: daftarFootball,
      ),
    );
  }
}
