// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin/events

import 'package:flutter/material.dart';

class Three_EventMC extends StatefulWidget {
  const Three_EventMC({super.key});

  @override
  State<Three_EventMC> createState() => _Three_EventMCState();
}

class _Three_EventMCState extends State<Three_EventMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Eventmain {
  String? id;
  String? date;
  String? date_to;
  String? name;
  String? description;
  bool? is_conference;
  String? link;
  String? proof_image_link;

  Eventmain(this.id, this.date, this.date_to, this.name, this.description,
      this.is_conference, this.link, this.proof_image_link);

  Eventmain.fromJson(Map<String , dynamic> json){
    id = json["id"];
    date = json["date"];
    date_to = json["date_to"];
    name = json["name"];
    description = json["description"];
    is_conference = json["is_conference"];
    link = json["link"];
    proof_image_link = json["proof_image_link"];
  }
}
