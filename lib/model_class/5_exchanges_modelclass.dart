// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/exchanges

import 'package:flutter/material.dart';

class Five_ExchangeMC extends StatefulWidget {
  const Five_ExchangeMC({super.key});

  @override
  State<Five_ExchangeMC> createState() => _Five_ExchangeMCState();
}

class _Five_ExchangeMCState extends State<Five_ExchangeMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Exchangemain {
  String? id;
  String? name;
  double? adjusted_volume_24h_share;
  List<ExchangeFiats>? fiats ;

  Exchangemain(this.id, this.name, this.adjusted_volume_24h_share, this.fiats);

  Exchangemain.fromJson(Map<String , dynamic> json){
    id = json["id"];
    name = json["name"];
    adjusted_volume_24h_share = json["adjusted_volume_24h_share"];
    fiats = <ExchangeFiats>[];
    json["fiats"].forEach((e){
      fiats!.add(ExchangeFiats.fromJson(e));
    });
  }
}

class ExchangeFiats {
  String? name;
  String? symbol;

  ExchangeFiats(this.name, this.symbol);

  ExchangeFiats.fromJson(Map<String , dynamic> json){
    name = json["name"];
    symbol = json["symbol"];
  }

}
