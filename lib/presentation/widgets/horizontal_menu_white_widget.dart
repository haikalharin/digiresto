import 'package:flutter/material.dart';

class HorizontalMenuWhite extends StatelessWidget {
  final leftIcon;
  final rightIcon;
  final title;
  final rightTitle;
  final onClick;

  const HorizontalMenuWhite(
      {Key? key,
      this.title,
      this.leftIcon,
      this.rightIcon,
      this.rightTitle,
      this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 10), child: leftIcon),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(this.title,
                        style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ),
            this.rightTitle != null
                ? Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(this.rightTitle,
                        style: TextStyle(
                            fontFamily: "roboto",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  )
                : Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      rightIcon,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
