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
}

class BtcTages {
  String? id;
  String? name;
  int? coin_countar;
  int? ico_countar;
}

class BtcTeam {
  String? id;
  String? name;
  String? position;
}

class BtcLinks {
  List? explorer;
  List? facebook;
  List? reddit;
  List? source_code;
  List? website;
  List? youtube;
}

class BtcLinks_Extended {
  String? url;
  String? type;
  Links_Extended_Stats? stats;
}

class Links_Extended_Stats {
  int? subscribers;
  int? contributors;
  int? stars;
  int? followers;
}

class BtcWhitepaper {
  String? link;
  String? thumbnail;
}
