import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BoxNumber extends StatelessWidget {
  final number;
  final icon;
  final onClick;
  final height;

  const BoxNumber(
      {Key? key, this.number, this.icon, this.onClick, this.height = 60.0})
      : super(key: key);

  //@override
  Widget iconBox(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.center,
      child: Material(
        child: InkWell(
          onTap: onClick,
          child: Container(
            alignment: Alignment.center,
            child: Icon(
              this.icon,
              color: AppColors.red,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget numberBox(BuildContext context) {
    return Container(
      //color: Colors.w,
      height: height,
      width: MediaQuery.of(context).size.width / 3,
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.center,
      child: Material(
        child: InkWell(
          onTap: onClick,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              this.number.toString(),
              style: TextStyle(
                fontFamily: "roboto",
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
        child: this.icon != null ? iconBox(context) : numberBox(context));
  }
}

class BoxInputPin extends StatelessWidget {
  final isActive;

  const BoxInputPin({Key? key, this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 50,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.greyStroke,
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(15.0)),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          ),
          isActive
              ? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(15.0)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                )
              : Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(15.0)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20),
                )
        ],
      ),
    );
  }
}

class Keyboard extends StatelessWidget {
  final handleClickNumber;
  final handleClickBackspace;
  final height;

  const Keyboard(
      {Key? key,
      this.handleClickNumber,
      this.handleClickBackspace,
      this.height = 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 1,
                  height: height,
                  onClick: () {
                    handleClickNumber(1);
                  }),
              BoxNumber(
                  number: 2,
                  height: height,
                  onClick: () {
                    handleClickNumber(2);
                  }),
              BoxNumber(
                  number: 3,
                  height: height,
                  onClick: () {
                    handleClickNumber(3);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 4,
                  height: height,
                  onClick: () {
                    handleClickNumber(4);
                  }),
              BoxNumber(
                  number: 5,
                  height: height,
                  onClick: () {
                    handleClickNumber(5);
                  }),
              BoxNumber(
                  number: 6,
                  height: height,
                  onClick: () {
                    handleClickNumber(6);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoxNumber(
                  number: 7,
                  height: height,
                  onClick: () {
                    handleClickNumber(7);
                  }),
              BoxNumber(
                  number: 8,
                  height: height,
                  onClick: () {
                    handleClickNumber(8);
                  }),
              BoxNumber(
                  number: 9,
                  height: height,
                  onClick: () {
                    handleClickNumber(9);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Container(),
                  ),
                ),
              ),
              BoxNumber(
                  number: 0,
                  height: height,
                  onClick: () {
                    handleClickNumber(0);
                  }),
              BoxNumber(
                icon: Icons.backspace_outlined,
                height: height,
                onClick: () {
                  handleClickBackspace();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InputPin extends StatelessWidget {
  final lengthPin;

  const InputPin({Key? key, this.lengthPin}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          BoxInputPin(isActive: lengthPin[0] != null ? true : false),
          BoxInputPin(isActive: lengthPin[1] != null ? true : false),
          BoxInputPin(isActive: lengthPin[2] != null ? true : false),
          BoxInputPin(isActive: lengthPin[3] != null ? true : false),
          BoxInputPin(isActive: lengthPin[4] != null ? true : false),
          BoxInputPin(isActive: lengthPin[5] != null ? true : false),
        ],
      ),
    );
  }
}
