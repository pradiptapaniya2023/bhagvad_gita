// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/ohlcv/today

import 'package:flutter/material.dart';

class Eight_TodayMC extends StatefulWidget {
  const Eight_TodayMC({super.key});

  @override
  State<Eight_TodayMC> createState() => _Eight_TodayMCState();
}

class _Eight_TodayMCState extends State<Eight_TodayMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Todaymain {
  String? time_open;
  String? time_close;
  double? open;
  double? high;
  double? low;
  double? close;
  int? volume;
  int? market_cap;

  Todaymain(this.time_open, this.time_close, this.open, this.high, this.low,
      this.close, this.volume, this.market_cap);

  Todaymain.fromJson(Map<String, dynamic> json) {
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
