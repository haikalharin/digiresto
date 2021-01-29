import 'package:boilerplate/constants/colors.dart';
import 'package:flutter/material.dart';

class HorizontalMenu extends StatelessWidget {
  final leftIcon;
  final rightIcon;
  final title;
  final rightTitle;
  final onClick;

  const HorizontalMenu({Key key, this.title, this.leftIcon, this.rightIcon,this.rightTitle,this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
      child: Container(
        margin: EdgeInsets.only(top: 5,bottom: 5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColors.greyStroke)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      leftIcon,
                      color: AppColors.red,
                      size: 21.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(this.title,style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    )),
                  ),
                ],
              ),
            ),
            this.rightTitle != null ?
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(this.rightTitle,style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              )),
            ) :
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                rightIcon,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
