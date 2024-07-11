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
      backgroundColor: Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color(0xFFD9D9D9),
            )),
        title: Text(
          "Coin King",
          style: TextStyle(
              fontFamily: "fontfamily",
              color: Color(0xFFFCCF00),
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
                        color: Color(0xFFFAF6E0),
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
                    color: Color(0xFFFAF6E0),
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
                  fontFamily: "fontfamily",
                  color: Color(0xFFFCCF00),
                  fontSize: 17),
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
                          dotColor: Color(0xFFFAEEB6),
                          activeDotColor: Color(0xFFFCCF00)),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Coins",
              style: TextStyle(
                  fontFamily: "fontfamily",
                  color: Color(0xFFFCCF00),
                  fontSize: 17),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 13, right: 13),
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD9D9D9)),
                        child: Center(
                          child: Text(
                            "$index",
                            style: TextStyle(
                                fontFamily: "regfont",
                                color: Color(0xFF000000),
                                fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 284,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFD9D9D9)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF328B45)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 110, left: 5),
                              child: Text(
                                "BTC - Bitcoin",
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontFamily: "regfont",
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Image.asset(
                                "asset/images/coin_icon.png",
                                width: 25,
                                height: 25,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFD9D9D9)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              "asset/images/right_arrow_icon.png",
                            ),
                          )),
                    ],
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
