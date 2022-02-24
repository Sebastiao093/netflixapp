import 'package:flutter/material.dart';
import 'package:netflix_app/ui/commons/constants/constants.dart';

class AlertInfomativo extends StatelessWidget {
  final String title;
  final String message;
  AlertInfomativo({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Align(
                alignment: Alignment(1.2, 0),
                child: TextButton(
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Center(
                child: Text(
                  title ,
                  textScaleFactor: 1.0,
                  style: TextStyle(
                      color: Constants.secondaryColor,
                      fontFamily: 'Gilroy',
                      fontSize: 22.0),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25),
                  child: Text(
                              message,
                          textScaleFactor: 1.0,
                          style: TextStyle(
                              color: Constants.secondaryColor,
                              fontFamily: 'Gilroy',
                              fontSize: 16.0),
                          maxLines: 6,
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      )),
    );
  }
}