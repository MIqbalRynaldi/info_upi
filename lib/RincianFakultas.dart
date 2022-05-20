import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RincianFakultas extends StatelessWidget {
  String name = "";
  String shortName = "";

  RincianFakultas(String name, String shortName){
    this.name = name;
    this.shortName = shortName;
  }
  Container componentItemSemuaFakultas(){
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children:[
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    width: 200,
                    height: 200,
              ),
          ),
          Column(
            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
            children:[
              Container(
                width: 300,
                child: Text("Prodi 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
            ],
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rincian Fakultas'),
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Column(
                children:[
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                        width: 200,
                        height: 200,
                  ),
                  Column(
                    mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                    children:[
                      Container(
                        child: Text(this.shortName,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                        ),
                      Container(
                        child: Text(this.name,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                      children:[
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                        this.componentItemSemuaFakultas(),
                      ]
                      )
                    )
                ]
            ),
        ),
      ),
    );
  }
}
