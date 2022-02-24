import 'package:flutter/material.dart';
import 'package:netflix_app/ui/commons/constants/constants.dart';

class ButtonCustom extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String text;
  final Function func;
  final double? minwidth;
  final double? height;
  final double? fontSize;
  final Color? borderColor;
  final double? border;
  final Color? disabledTextColor;
  final Color? disabledColor;
  final String? icono;
  const ButtonCustom(
      {Key? key,
      this.textColor,
      this.minwidth,
      this.height,
      this.fontSize,
      this.color,
      this.borderColor,
      this.border,
      this.disabledColor,
      this.disabledTextColor,
      required this.text,
      required this.func,
      this.icono})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: minwidth != null ? minwidth : 200.0,
      height: height != null ? height : 45.0,
      child: RaisedButton(
        padding: icono != null ? EdgeInsets.all(2.5) : null,
        disabledElevation: 0,
        textColor: textColor != null ? textColor : Constants.primaryColor,
        elevation: 0.0,
        color: color != null ? color : Constants.secondaryColor,
        child: icono == null
            ? Text(
                text.toUpperCase(),
                textScaleFactor: 1.0,
                style: TextStyle(
                  fontSize: fontSize != null ? fontSize : 20,
                  fontFamily: 'Gilroy',
                ),
                maxLines: 1,
              )
            : _raisedButtonWithIcon(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        onPressed: func(),
      ),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey[50]!,
                blurRadius: 7,
                spreadRadius: 2,
                offset: Offset(0, 3)),
          ],
          borderRadius: BorderRadius.circular(8.0),
          border: border != null
              ? Border.all(
                  color: borderColor ?? Constants.primaryColor,
                  width: 1,
                )
              : null),
    );
  }

  Widget _raisedButtonWithIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 2.5, left: 5.0),
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/$icono.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(
          child: Text(
            text.toUpperCase(),
            textScaleFactor: 1.0,
            style: TextStyle(
              fontSize: fontSize != null ? fontSize : 20,
              fontFamily: 'Gilroy',
            ),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}