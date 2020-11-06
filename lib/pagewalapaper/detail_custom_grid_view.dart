import 'package:flutter/material.dart';

class PageDetailCustomGridview extends StatefulWidget {
  String nama, gambar, keterangan;

  PageDetailCustomGridview({this.nama, this.gambar, this.keterangan});

  @override
  _PageDetailCustomGridviewState createState() =>
      _PageDetailCustomGridviewState();
}

class _PageDetailCustomGridviewState extends State<PageDetailCustomGridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.nama}'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Hero(
            tag: widget.nama,
            child: Material(
              child: InkWell(
                child: Image.asset(
                  'gambar/bola/${widget.gambar}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // BagianNama(
          //   nama: widget.nama,
          // ),
          // BagianKeterangan(
          //   keterangan: widget.keterangan,
          // )
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});

  String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: TextStyle(fontSize: 20, color: Colors.brown),
                ),
                Text(
                  '$nama\@gmail.com',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 40.0,
                color: Colors.deepOrange,
              ),
              Text(
                "14",
                style: TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {
  String keterangan;

  BagianKeterangan({this.keterangan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Text(
            '$keterangan',
            style: TextStyle(fontSize: 14.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
