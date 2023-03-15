import 'package:flutter/material.dart';
import 'package:flutter_igikorea/constants.dart';
import 'package:flutter_igikorea/models/event.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //현재 날짜 불러옴
  var now = DateTime.now();

  static List<String> eventMain = [
    '동서회당 1차 - 고성~ 철원',
    '동서회당 2차 - 고성~ 파주',
    '동서회당 3차 - 고성~ 연천',
    '구간 1차 - 강화~ 김포',
    '구간 2차 - 강원도 철원',
  ];
  static List<DateTime> firstDate = [
    DateTime.utc(2023, 2, 24),
    DateTime.utc(2023, 3, 11),
    DateTime.utc(2023, 6, 22),
    DateTime.utc(2023, 4, 1),
    DateTime.utc(2023, 5, 23),
  ];
  static List<DateTime> lastDate = [
    DateTime.utc(2023, 2, 28),
    DateTime.utc(2023, 3, 18),
    DateTime.utc(2023, 7, 10),
    DateTime.utc(2023, 4, 10),
    DateTime.utc(2023, 5, 28),
  ];

  static List<String> eventImagePath = [
    "assets/main_vp_1.png",
    "assets/main_vp_2.png",
    "assets/main_vp_3.png",
    "assets/main_vp_5.png",
    "assets/main_vp_8.png",
  ];

  final List<Event> eventData = List.generate(
    eventMain.length,
    (index) => Event(
      eventMain[index],
      firstDate[index],
      lastDate[index],
      eventImagePath[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    String formatDate = DateFormat('yy/MM/dd').format(now);

    //첫날짜 순으로 치환
    eventData.sort((a, b) {
      return b.firstDate.compareTo(a.firstDate);
    });

    return Scaffold(
      backgroundColor: gBackgroundColor,
      body: ListView.builder(
          itemCount: eventData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 9, bottom: 9, left: 18, right: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: gItemViewColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                height: 126,
                width: 324,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, bottom: 8, left: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          eventData[index].imagePath,
                          fit: BoxFit.cover,
                          height: 110,
                          width: 126,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (now.isAfter(eventData[index].firstDate) ==
                                  false &&
                              now.isAfter(eventData[index].lastDate) == false)
                            _buildProcessBox(gEventScheduleColor, "예정"),
                          if (now.isAfter(eventData[index].firstDate) == true &&
                              now.isAfter(eventData[index].lastDate) == false)
                            _buildProcessBox(gEventProgressColor, "진행중"),
                          if (now.isAfter(eventData[index].firstDate) == true &&
                              now.isAfter(eventData[index].lastDate) == true)
                            _buildProcessBox(gEventEndColor, "종료"),
                          SizedBox(height: 7),
                          Text(
                            eventData[index].name,
                            style: TextStyle(
                                color: gMainTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 7),
                          Text(
                            "행사기간:${DateFormat('MM/dd').format(eventData[index].firstDate)} ~ ${DateFormat('MM/dd').format(eventData[index].lastDate)}",
                            style:
                                TextStyle(color: gSubTextColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _buildProcessBox(Color gcolor, String title) {
    return Container(
      height: 20,
      width: 40,
      decoration: BoxDecoration(
        color: gcolor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          "${title}",
          style: TextStyle(color: gEventTextColor, fontSize: 9),
        ),
      ),
    );
  }
}
