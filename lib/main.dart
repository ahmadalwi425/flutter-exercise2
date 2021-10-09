import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //hide debug banner
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Colors.red, //change background color
          ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    //alignment inside column or row
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("BERITA TERBARU"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("PERTANDINGAN HARI INI"),
                        )
                      ],)
                  ],),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.purpleAccent),left: BorderSide(color: Colors.purpleAccent),top: BorderSide(color: Colors.purpleAccent))
                  ),
                  child: Image.asset('assets/images/costa.jpg'),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.purpleAccent),left: BorderSide(color: Colors.purpleAccent))
                  ),
                  child: Center(
                    child: Text("Costa Mendekat Ke Palmeiras",
                      style : TextStyle(fontSize:20)
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  color: Colors.purpleAccent,
                  alignment: Alignment.centerLeft,
                  child: Text("Transfer", style: TextStyle(fontSize: 15)),
                  height: 50.0,
                  ),

                //Content
                content(),

                content(),

                content()
            ],),
          ),
        )
      )
    );
  }
}

class content extends StatelessWidget {
  const content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green.shade800),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green.shade800),
            ),
            child: Row(
              children: <Widget>[
                Image.asset('assets/images/pique.jpg',width: 180,),
                Container(
                padding: EdgeInsets.only(left: 10.0),
                child:
                Text("Pique Bilang Wasit Untungkan\nMadrid, Koeman Tepuk Jidat",
                      style: TextStyle(fontSize: 12), softWrap: false,),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0,top: 10,bottom: 10),
            alignment: Alignment.centerLeft,
            child : Text('Barcelona Feb 13, 2021')
          ),
        ],
      ),
    );
  }
}