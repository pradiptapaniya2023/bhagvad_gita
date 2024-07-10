import 'package:flutter/material.dart';

class Appwidgets {
  Widget topCoinsCard(
    String top1,
    String top2,
    String top3, String center1, String bottom1,
  ) {
    return Container(
      height: 102,
      width: 160,
      child: Card(
        color: Colors.white,
        elevation: 9,
        shadowColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 26,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        top1,
                        style: TextStyle(
                            fontFamily: "regfont", color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 26,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        top2,
                        style: TextStyle(
                            fontFamily: "regfont", color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    height: 26,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        top3,
                        style: TextStyle(
                            fontFamily: "regfont", color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5 , left: 5),
                  child: Text(
                    center1,
                    style: TextStyle(
                        fontFamily: "regfont", fontWeight: FontWeight.bold , fontSize: 18),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4 , left: 5),
              child: Container(
                height: 26,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    bottom1,
                    style: TextStyle(
                        fontFamily: "regfont", color: Colors.white),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
