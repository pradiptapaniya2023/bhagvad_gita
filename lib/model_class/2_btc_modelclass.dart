// API : https://api.coinpaprika.com/v1/coins/btc-bitcoin

import 'package:flutter/material.dart';

class Second_BtcMc extends StatefulWidget {
  const Second_BtcMc({super.key});

  @override
  State<Second_BtcMc> createState() => _Second_BtcMcState();
}

class _Second_BtcMcState extends State<Second_BtcMc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class BtcMain {
  String? id;
  String? name;
  String? symbol;
  int? rank;
  bool? is_new;
  bool? is_active;
  String? type;
  String? logo;
  List<BtcTages>? tags;
  List<BtcTeam>? team;
  String? description;
  String? message;
  bool? open_source;
  String? started_at;
  String? development_status;
  bool? hardware_wallet;
  String? proof_type;
  String? org_structure;
  String? hash_algorithm;
  BtcLinks? links;
  List<BtcLinks_Extended>? links_extended;
  BtcWhitepaper? whitepaper;
  String? first_data_at;
  String? last_data_at;

  BtcMain(
      this.id,
      this.name,
      this.symbol,
      this.rank,
      this.is_new,
      this.is_active,
      this.type,
      this.logo,
      this.tags,
      this.team,
      this.description,
      this.message,
      this.open_source,
      this.started_at,
      this.development_status,
      this.hardware_wallet,
      this.proof_type,
      this.org_structure,
      this.hash_algorithm,
      this.links,
      this.links_extended,
      this.whitepaper,
      this.first_data_at,
      this.last_data_at);

  BtcMain.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    symbol = json["symbol"];
    rank = json["rank"];
    is_new = json["is_new"];
    is_active = json["is_active"];
    type = json["type"];
    logo = json["logo"];
    tags = <BtcTages>[];
    json["tags"].forEach((e) {
      tags!.add(BtcTages.fromJson(e));
    });
    team = <BtcTeam>[];
    json["team"].forEach((e) {
      team!.add(BtcTeam.fromJson(e));
    });
    description = json["description"];
    message = json["message"];
    open_source = json["open_source"];
    started_at = json["started_at"];
    development_status = json["development_status"];
    hardware_wallet = json["hardware_wallet"];
    proof_type = json["proof_type"];
    org_structure = json["org_structure"];
    hash_algorithm = json["hash_algorithm"];
    links = BtcLinks.fromJson(json["links"]);
    links_extended = <BtcLinks_Extended>[];
    json["links_extended"].forEach((e) {
      links_extended!.add(BtcLinks_Extended.fromJson(e));
    });
    first_data_at = json["first_data_at"];
    last_data_at = json["last_data_at"];
  }
}

class BtcTages {
  String? id;
  String? name;
  int? coin_counter;
  int? ico_counter;

  BtcTages(this.id, this.name, this.coin_counter, this.ico_counter);

  BtcTages.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    coin_counter = json["coin_counter"];
    ico_counter = json["ico_counter"];
  }
}

class BtcTeam {
  String? id;
  String? name;
  String? position;

  BtcTeam(this.id, this.name, this.position);

  BtcTeam.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    position = json["position"];
  }
}

class BtcLinks {
  List? explorer;
  List? facebook;
  List? reddit;
  List? source_code;
  List? website;
  List? youtube;

  BtcLinks(this.explorer, this.facebook, this.reddit, this.source_code,
      this.website, this.youtube);

  BtcLinks.fromJson(Map<String, dynamic> json) {
    explorer = json["explorer"].cast<String>();
    facebook = json["facebook"].cast<String>();
    reddit = json["reddit"].cast<String>();
    source_code = json["source_code"].cast<String>();
    website = json["website"].cast<String>();
    youtube = json["youtube"].cast<String>();
  }
}

class BtcLinks_Extended {
  String? url;
  String? type;
  Links_Extended_Stats? stats;

  BtcLinks_Extended(this.url, this.type, this.stats);

  BtcLinks_Extended.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    type = json["type"];
    stats = Links_Extended_Stats.fromJson(json["stats"]);
  }
}

class Links_Extended_Stats {
  int? subscribers;
  int? contributors;
  int? stars;
  int? followers;

  Links_Extended_Stats(
      this.subscribers, this.contributors, this.stars, this.followers);

  Links_Extended_Stats.fromJson(Map<String, dynamic> json) {
    subscribers = json["subscribers"];
    contributors = json["contributors"];
    stars = json["stars"];
    followers = json["followers"];
  }
}

class BtcWhitepaper {
  String? link;
  String? thumbnail;

  BtcWhitepaper(this.link, this.thumbnail);

  BtcWhitepaper.fromJson(Map<String, dynamic> json) {
    link = json["link"];
    thumbnail = json["thumbnail"];
  }
}
