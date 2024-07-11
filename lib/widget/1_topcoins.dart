import 'package:flutter/material.dart';

class Appwidgets {
  Widget topCoinsCard(
    String top1,
    String top2,
    String top3, String center1, String bottom1,
  ) {
    return Container(
      height: 100,
      width: 170,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Card(
        color: Color(0xFFFAF6E0),
        elevation: 5,
        shadowColor: Color(0xFF898055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        top1,
                        style: TextStyle(
                            fontFamily: "regfont", color: Color(0xFFFAF6E0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        top2,
                        style: TextStyle(
                            fontFamily: "regfont", color: Color(0xFFFAF6E0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF1E1E1E),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        top3,
                        style: TextStyle(
                            fontFamily: "regfont", color: Color(0xFFFAF6E0)),
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
                        fontFamily: "regfont", fontWeight: FontWeight.w700 , fontSize: 22 , color: Color(0xFF1E1E1E)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5 , left: 5),
              child: Container(
                height: 20,
                width: 47,
                decoration: BoxDecoration(
                    color: Color(0xFF328B45),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    bottom1,
                    style: TextStyle(
                        fontFamily: "regfont", color: Color(0xFFFAF6E0)),
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
