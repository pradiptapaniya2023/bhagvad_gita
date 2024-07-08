import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white60,
            )),
        title: Text(
          "Coin King",
          style: TextStyle(
              fontFamily: "fontfamily",
              color: Colors.yellow,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("asset/images/app_icon.png"))),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 20),
                child: Container(
                    height: 45,
                    width: 285,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Search Coin here...",
                          hintStyle: TextStyle(
                              fontFamily: "regfont",
                              fontWeight: FontWeight.bold),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, right: 20),
                child: Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("asset/images/search_icon.png"),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Text(
              "Top Coins",
              style: TextStyle(
                  fontFamily: "fontfamily", color: Colors.yellow, fontSize: 17),
            ),
          ),

        ],
      ),
    );
  }
}
