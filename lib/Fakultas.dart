import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'RincianFakultas.dart';

class Fakultas extends StatelessWidget {
  const Fakultas({Key? key}) : super(key: key);
  @override

  Row card(String name , String shortName){
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
                Text(shortName,style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black)),
                Text(name),
              ]
            ),

          ),
          Container(
              margin : EdgeInsets.only(left: 20.0, right: 20.0),
              child:Column(
                mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                        width: 50,
                        height: 50,
                  ),
                ],
              ),
          ),
        ]
      );
  }
  Widget build(BuildContext context) {
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:[
                this.card("Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam", "FPMIPA"),
              ]
              )
          ),
          onTap: () {
              Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return RincianFakultas("Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam", "FPMIPA");
            }));
          },
        ),
        InkWell(
          child : Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children:[
                this.card("Fakultas Pendidikan Ilmu Pengetahuan Sosial", "FPIPS"),
              ]
              ),
          ),
          onTap: () {
              Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return RincianFakultas("Fakultas Pendidikan Ilmu Pengetahuan Sosial", "FPIPS");
            }));
          },
          ),
      ]),
    );
  }
}
