// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/twitter

import 'package:flutter/material.dart';

class Fourth_TwitterMC extends StatefulWidget {
  const Fourth_TwitterMC({super.key});

  @override
  State<Fourth_TwitterMC> createState() => _Fourth_TwitterMC();
}

class _Fourth_TwitterMC extends State<Fourth_TwitterMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Twittermain {
  String? data;
  String? user_name;
  String? user_image_link;
  String? status;
  bool? is_retweet;
  int? retweet_count;
  int? like_count;
  String? status_link;
  String? status_id;

  Twittermain(
      this.data,
      this.user_name,
      this.user_image_link,
      this.status,
      this.is_retweet,
      this.retweet_count,
      this.like_count,
      this.status_link,
      this.status_id);

  Twittermain.fromJson(Map<String, dynamic> json) {
    data = json["date"];
    user_name = json["user_name"];
    user_image_link = json["user_image_link"];
    status = json["status"];
    is_retweet = json["is_retweet"];
    retweet_count = json["retweet_count"];
    like_count = json["like_count"];
    status_link = json["status_link"];
    status_id = json["status_id"];
  }
}
