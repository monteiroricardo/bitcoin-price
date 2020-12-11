import 'package:flutter/material.dart';

class Contains extends StatefulWidget {
  final buyprice;
  final sellprice;
  final initials;
  Contains(this.buyprice, this.sellprice, this.initials);
  @override
  _ContainsState createState() => _ContainsState();
}

class _ContainsState extends State<Contains> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Container(
                width: 45,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  color: Color(0xffF7931A),
                ),
                alignment: Alignment.center,
                child: Text(
                  widget.initials,
                  style: TextStyle(
                      color: Color(0xff090C14),
                      fontFamily: "Titillium",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  "buy",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Titillium",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                width: 115,
                padding: EdgeInsets.all(2),
                color: Color(0xff090C14),
                alignment: Alignment.center,
                child: Text(
                  widget.buyprice,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Titillium",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                color: Colors.red,
                alignment: Alignment.center,
                child: Text(
                  "sell",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Titillium",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  color: Color(0xff090C14),
                ),
                padding: EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Text(
                  widget.sellprice,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Titillium",
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
