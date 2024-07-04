// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/markets

import 'package:flutter/material.dart';

class Six_MarketMC extends StatefulWidget {
  const Six_MarketMC({super.key});

  @override
  State<Six_MarketMC> createState() => _Six_MarketMCState();
}

class _Six_MarketMCState extends State<Six_MarketMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Marketmain {
  String? exchange_id;
  String? exchange_name;
  String? pair;
  String? base_currency_id;
  String? base_currency_name;
  String? quote_currency_id;
  String? quote_currency_name;
  String? market_url;
  String? category;
  String? fee_type;
  bool? outlier;
  bool? adjusted_volume_24h_share;
  MarketQuotes? quotes;
  String? trust_score;
  String? last_updated;

  Marketmain(
      this.exchange_id,
      this.exchange_name,
      this.pair,
      this.base_currency_id,
      this.base_currency_name,
      this.quote_currency_id,
      this.quote_currency_name,
      this.market_url,
      this.category,
      this.fee_type,
      this.outlier,
      this.adjusted_volume_24h_share,
      this.quotes,
      this.trust_score,
      this.last_updated);

  Marketmain.fromJson(Map<String, dynamic> json) {
    exchange_id = json["exchange_id"];
    exchange_name = json["exchange_name"];
    pair = json["pair"];
    base_currency_id = json["base_currency_id"];
    base_currency_name = json["base_currency_name"];
    quote_currency_id = json["quote_currency_id"];
    quote_currency_name = json["quote_currency_name"];
    market_url = json["market_url"];
    category = json["category"];
    fee_type = json["fee_type"];
    outlier = json["outlier"];
    adjusted_volume_24h_share = json["adjusted_volume_24h_share"];
    quotes = MarketQuotes.fromJson(json["quotes"]);
    trust_score = json["trust_score"];
    last_updated = json["last_updated"];
  }
}

class MarketQuotes {
  QuotesUSD? USD;

  MarketQuotes(this.USD);

  MarketQuotes.fromJson(Map<String, dynamic> json) {
    USD = QuotesUSD.fromJson(json["USD"]);
  }
}

class QuotesUSD {
  double? price;
  double? volume_24h;

  QuotesUSD(this.price, this.volume_24h);

  QuotesUSD.fromJson(Map<String, dynamic> json) {
    price = json["price"];
    volume_24h = json["volume_24h"];
  }
}
