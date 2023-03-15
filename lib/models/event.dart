class Event {
  final String eventImage;
  final String name;
  final String date;

  Event({
    required this.eventImage,
    required this.name,
    required this.date,
  });

  List<Event> Events = [
    Event(
      eventImage: "assets/main_vp_1.png",
      name: "동서회당 1차 - 고성~ 철원",
      date: "2023/02/24 ~ 2023/02/28",
    ),
    Event(
      eventImage: "assets/main_vp_2.png",
      name: "동서회당 2차 - 고성~ 파주",
      date: "2023/03/11 ~ 2023/03/18",
    ),
    Event(
      eventImage: "assets/main_vp_3.png",
      name: "동서회당 3차 - 고성~ 연천",
      date: "2023/06/22 ~ 2023/07/01",
    ),
    Event(
      eventImage: "assets/main_vp_5.png",
      name: "구간 1차 - 강화~ 김포",
      date: "2023/04/01 ~ 2023/04/10",
    ),
    Event(
      eventImage: "assets/main_vp_8.png",
      name: "구간 2차 - 강원도 철원",
      date: "2023/05/23 ~ 2023/05/28",
    ),
  ];
}
