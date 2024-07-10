import 'package:coin_king/widget/1_topcoins.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController pgController = PageController();

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
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
                height: 230,
                width: double.infinity,
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        itemCount: 2,
                        controller: pgController,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Appwidgets().topCoinsCard("BTC", "Coin",
                                      "1st", "Bitcoin", "Active"),
                                  Appwidgets().topCoinsCard("ETH", "Coin",
                                      "2nd", "Ethereum", "Active"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Appwidgets().topCoinsCard("USDT", "Token",
                                      "3nd", "Tether", "Active"),
                                  Appwidgets().topCoinsCard("BNB", "Coin",
                                      "4nd", "Binannce Coin", "Active"),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pgController,
                      count: 2,
                      effect: WormEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 8,
                          dotColor: Colors.white,
                          activeDotColor: Colors.yellow),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Coins",
              style: TextStyle(
                  fontFamily: "fontfamily", color: Colors.yellow, fontSize: 17),
            ),
          ),

        ],
      ),
    );
  }
}
