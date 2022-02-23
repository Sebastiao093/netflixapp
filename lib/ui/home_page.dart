import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/witcher.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      height: 50,
                      child: 
                        Text(
                          'Welcome!',
                          style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Gilroy'),textAlign: TextAlign.justify,
                        ),
                        // Text(
                        //   '$_counter',
                        //   style: Theme.of(context).textTheme.headline4,
                        // ),
                      
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
