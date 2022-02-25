import 'package:flutter/material.dart';
import 'package:netflix_app/ui/bottombar.dart';
import 'package:netflix_app/ui/series_page.dart';
import 'package:netflix_app/ui/widgets/button.dart';

import 'commons/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(top: 70),
                          height: 50,
                          child: Text(
                            'Welcome!',
                            style: TextStyle(
                                color: Constants.primaryTextColor,
                                fontSize: 30,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavTab()));
                        },
                        child: Text('Sign Up'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavTab()));
                        },
                        child: ButtonCustom(
                            text: 'Log in', color: Colors.yellow, func: () {}),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Constants.primaryTextColor,
                            fontSize: 30,
                            fontFamily: 'Gilroy',
                            decoration: TextDecoration.underline),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDisplayBottomSheetTiposDocumentos() async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        backgroundColor: Colors.white,
        isDismissible: true,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                  child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(vertical: 17.0),
                child: Image.asset("assets/images/img_down.png"),
              )),
              Center(
                  child: Text(
                "Tipo de identificación",
                style: TextStyle(
                    color: Constants.primaryTextColor,
                    fontFamily: 'Gilroy',
                    fontSize: 16),
              )),
              //searchDireccion(),
              Flexible(
                child: Container(child: _buildBottomNavigationMenu()),
              ),
            ],
          );
        }).then((value) {
      if (value != null) {
        setState(() {
          // tipo = value;
          // tipoController.text = tipo.descripcion;
          // identificationController.text = '';
        });
      }
    });
  }

  Widget _buildBottomNavigationMenu() {
    return Container(
        padding: const EdgeInsets.only(bottom: 20), child: _widgetInput());
  }

  _widgetInput() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 18, left: 25, right: 25),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: Constants.primaryColor))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '',
                  textScaleFactor: 1.0,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 14,
                      color: Constants.primaryColor,
                      fontFamily: 'Gilroy'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
