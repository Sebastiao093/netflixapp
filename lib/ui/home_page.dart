import 'package:flutter/material.dart';
import 'package:netflix_app/ui/bottombar.dart';

import 'commons/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
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
                        style: ElevatedButton.styleFrom(
                            primary: Constants.secondaryColor,
                            minimumSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(),
                                borderRadius: BorderRadius.circular(30)),
                            side: BorderSide(style: BorderStyle.solid),
                            textStyle: TextStyle(fontFamily: 'Gilroy')),
                        onPressed: () {
                        },
                        child: Text('Sign Up'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Constants.primaryTextColor,
                            minimumSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(),
                                borderRadius: BorderRadius.circular(30)),
                            textStyle: TextStyle(fontFamily: 'Gilroy')),
                        onPressed: () {
                          _onDisplayBottomSheetInput();
                        },
                        child: Text('Log In'),
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

  void _onDisplayBottomSheetInput() async {
    await showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        backgroundColor: Constants.primaryColor,
        isDismissible: true,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 17.0),
                        child: Icon(Icons.close)),
                  )),
              Flexible(
                child: Container(child: _buildBottomNavigationMenu()),
              ),
            ],
          );
        }).then((value) {
      if (value != null) {
        setState(() {});
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
        height: 500,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Constants.primaryColor,
            border: Border(bottom: BorderSide(color: Constants.primaryColor))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: TextStyle(color: Constants.secondaryTextColor),
                  controller: _controllerName,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Constants.secondaryTextColor),
                      fillColor: Constants.secondaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                    style: TextStyle(color: Constants.secondaryTextColor),
                    controller: _controllerPass,
                    autofocus: true,
                    decoration: InputDecoration(
                        labelStyle:
                            TextStyle(color: Constants.secondaryTextColor),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Constants.secondaryTextColor,
                        ),
                        fillColor: Constants.secondaryColor)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Constants.primaryTextColor,
                  minimumSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.circular(30)),
                  textStyle: TextStyle(fontFamily: 'Gilroy')),
              onPressed: () {
                if ((_controllerName.text == Constants.username &&
                        _controllerPass.text == Constants.password) ||
                    (_controllerName.text == Constants.username2 &&
                        _controllerPass.text == Constants.password2)) {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavTab()));
                } else {
                  showDialog(
                      context: context,
                      builder: (ctx) => (AlertDialog(
                          title: Text('Email o contraseña incorrectos'))));
                }
              },
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
