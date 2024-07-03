// get API : https://api.coinpaprika.com/v1/coins

import 'package:flutter/material.dart';

class First_CoinMC extends StatefulWidget {
  const First_CoinMC({super.key});

  @override
  State<First_CoinMC> createState() => _First_CoinMCState();
}

class _First_CoinMCState extends State<First_CoinMC> {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Coin {
  String? id;
  String? name;
  String? symbol;
  int? rank;
  bool? is_new;
  bool? is_active;
  String? type;

  Coin(this.id, this.name, this.symbol, this.rank, this.is_new, this.is_active,
      this.type);

  Coin.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    symbol = json["symbol"];
    rank = json["rank"];
    is_new = json["is_new"];
    is_active = json["is_active"];
    type = json["type"];
  }
}
