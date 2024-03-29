import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
