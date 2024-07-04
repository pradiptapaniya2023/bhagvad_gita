// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/ohlcv/latest

import 'package:flutter/material.dart';

class Seven_LatestMC extends StatefulWidget {
  const Seven_LatestMC({super.key});

  @override
  State<Seven_LatestMC> createState() => _Seven_LatestMCState();
}

class _Seven_LatestMCState extends State<Seven_LatestMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Latestmain {
  String? time_open;
  String? time_close;
  double? open;
  double? high;
  double? low;
  double? close;
  int? volume;
  int? market_cap;

  Latestmain(this.time_open, this.time_close, this.open, this.high, this.low,
      this.close, this.volume, this.market_cap);

  Latestmain.fromJson(Map<String, dynamic> json) {
    time_open = json["time_open"];
    time_close = json["time_close"];
    open = json["open"];
    high = json["high"];
    low = json["low"];
    close = json["close"];
    volume = json["volume"];
    market_cap = json["market_cap"];
  }
}
