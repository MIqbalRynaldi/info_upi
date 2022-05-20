import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Fasilitas extends StatelessWidget {
  const Fasilitas({Key? key}) : super(key: key);
  @override

  Row card(String title){
    return Row(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width:300,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            padding: EdgeInsets.all(8),
            child:Column(
              mainAxisAlignment : MainAxisAlignment.spaceEvenly,
              children:[
                Text(title,style:TextStyle(
                  fontSize: 10,
                  color: Colors.black)),
              ]
            ),

          ),
        ]
      );
  }
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        Container(
            width:300,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            padding: EdgeInsets.all(8),
            child:Column(
              mainAxisAlignment : MainAxisAlignment.spaceEvenly,
              children:[
                Text("FASILITAS UNIVERSITAS PENDIDIKAN INDONESIA",style:TextStyle(
                  fontSize: 15,
                  color: Colors.black)),
              ]
            ),
          ),
        this.card("Ruang Kuliah"),
        this.card("Perpustakaan"),
        this.card("Sarana Microteaching"),
        this.card("Balai Bahasa/Laboratorium Bahasa."),
        this.card("Unit Pelaksana Teknis Bimbingan dan Konseling."),
        this.card("Pusat Pendidikan Komputer."),
        this.card("Asrama"),
        this.card("Pusat Kegiatan Mahasiswa."),
      ]),
    );
  }
}
