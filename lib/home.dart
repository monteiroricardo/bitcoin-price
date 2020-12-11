import 'package:bitcoin_price/contains.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _buyUSD = "0";
  String _sellUSD = "0";
  String _buyEUR = "0";
  String _sellEUR = "0";
  String _buyBRL = "0";
  String _sellBRL = "0";
  String _buyGBP = "0";
  String _sellGBP = "0";
  String _buyJPY = "0";
  String _sellJPY = "0";
  String _buyAUD = "0";
  String _sellAUD = "0";
  String _buyCAD = "0";
  String _sellCAD = "0";
  String _buyCHF = "0";
  String _sellCHF = "0";
  String _buyCLP = "0";
  String _sellCLP = "0";
  String _buySGD = "0";
  String _sellSGD = "0";
  _rescuePrice() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);
    Map<String, dynamic> dadosAPI = json.decode(response.body);

    setState(() {
      _buyUSD = dadosAPI["USD"]["buy"].toString();
      _sellUSD = dadosAPI["USD"]["sell"].toString();
      _buyBRL = dadosAPI["BRL"]["buy"].toString();
      _sellBRL = dadosAPI["BRL"]["sell"].toString();
      _buyEUR = dadosAPI["EUR"]["buy"].toString();
      _sellEUR = dadosAPI["EUR"]["sell"].toString();
      _buyGBP = dadosAPI["GBP"]["buy"].toString();
      _sellGBP = dadosAPI["GBP"]["sell"].toString();
      _buyJPY = dadosAPI["JPY"]["buy"].toString();
      _sellJPY = dadosAPI["JPY"]["sell"].toString();
      _sellAUD = dadosAPI["AUD"]["sell"].toString();
      _buyAUD = dadosAPI["AUD"]["buy"].toString();
      _buyCAD = dadosAPI["CAD"]["buy"].toString();
      _sellCAD = dadosAPI["CAD"]["sell"].toString();
      _buyCHF = dadosAPI["CHF"]["buy"].toString();
      _sellCHF = dadosAPI["CHF"]["sell"].toString();
      _buyCLP = dadosAPI["CLP"]["buy"].toString();
      _sellCLP = dadosAPI["CLP"]["sell"].toString();
      _buySGD = dadosAPI["SGD"]["buy"].toString();
      _sellSGD = dadosAPI["SGD"]["sell"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: Image.asset(
                      'assets/images/bitcoin.png',
                      width: 300,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(),
                    Contains(_buyUSD, _sellUSD, "USD"),
                    Contains(_buyEUR, _sellEUR, "EUR"),
                    Contains(_buyBRL, _sellBRL, "BRL"),
                    Contains(_buyGBP, _sellGBP, "GBP"),
                    Contains(_buyJPY, _sellJPY, "JPY"),
                    Contains(_buyAUD, _sellAUD, "AUD"),
                    Contains(_buyCAD, _sellCAD, "CAD"),
                    Contains(_buyCHF, _sellCHF, "CHF"),
                    Contains(_buyCLP, _sellCLP, "CLP"),
                    Contains(_buySGD, _sellSGD, "SGB"),
                    Divider()
                  ],
                ),
                FloatingActionButton(
                  onPressed: _rescuePrice,
                  backgroundColor: Color(0xffF7931A),
                  child: FaIcon(
                    FontAwesome.refresh,
                    color: Color(0xff090C14),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
