import 'package:flutter/material.dart';
import 'package:flutter_igikorea/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gBackgroundColor,
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 9, bottom: 9, left: 18, right: 18),
            child: Container(
              decoration: BoxDecoration(
                color: gItemViewColor,
                borderRadius: BorderRadius.circular(14),
              ),
              height: 126,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8, left: 5),
                    child: Image.asset(
                      "assets/main_vp_1.png",
                      fit: BoxFit.cover,
                      height: 110,
                      width: 126,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: gEventProgressColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Text(
                              "예정",
                              style: TextStyle(
                                  color: gEventTextColor, fontSize: 9),
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "구간 4차 - 철원",
                          style: TextStyle(
                              color: gMainTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "행사기간: 11/4 ~ 11/6",
                          style: TextStyle(color: gSubTextColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
