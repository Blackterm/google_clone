import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Mail> mails = [
    Mail(
      title: "Gizem",
      text:
          "Bu gün yemek yapasım yok hamburger gömek benden koçhum.Bu gün yemek yapasım yok hamburger gömek benden koçhum.Bu gün yemek yapasım yok hamburger gömek benden koçhum.",
      history: "20 ŞUB",
      color: Colors.red,
      isItFavorite: true,
    ),
    Mail(
      title: "a",
      text: ".",
      history: "20 HAZ",
      color: Colors.amber,
      isItFavorite: true,
    ),
    Mail(
      title: "Ali",
      text: "Bu gün toplantı iptal oldu.",
      history: "15 HAZ",
      color: Colors.blue,
      isItFavorite: false,
    ),
    Mail(
      title: "Mehmet",
      text: "Akşam 8'de kahve içelim.",
      history: "27 MAY",
      color: Colors.pink,
      isItFavorite: false,
    ),
    Mail(
      title: "Osman",
      text: "Yeni iş fırsatını değerlendir güzel iş.",
      history: "15 MAY",
      color: Colors.red,
      isItFavorite: true,
    ),
    Mail(
      title: "Songül",
      text: "Sabah işe giderken benide alırmısın.",
      history: "28 MAR",
      color: Colors.purple,
      isItFavorite: false,
    ),
    Mail(
      title: "Meral",
      text: "Yeni işin hayırlı olsun daha güzel.",
      history: "21 MAR",
      color: Colors.blue,
      isItFavorite: true,
    ),
    Mail(
      title: "Adil",
      text: "Borcumu hemen ver yoksa okanı keserim.",
      history: "23 MAR",
      color: Colors.pink,
      isItFavorite: true,
    ),
    Mail(
      title: "Okan",
      text: "Motor arıza yaptı gene senin araba lazım bana.",
      history: "5 MAR",
      color: Colors.red,
      isItFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(60, 50, 10, 60),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Color.fromARGB(255, 73, 22, 18),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              20,
              0,
              0,
            ),
            child: SearchText(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              "PRIMARY",
              style: TextStyle(
                color: Colors.black54.withOpacity(0.5),
              ),
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.725,
                  child: ListView.builder(
                    itemCount: 9,
                    itemBuilder: (Context, index) => Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  0,
                                  0,
                                ),
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundColor: mails[index].color,
                                  child: Text(
                                    mails[index].title.substring(0, 1),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.2,
                                child: Text(
                                  mails[index].title,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width * 0.70,
                                child: Text(
                                  mails[index].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              5,
                              10,
                            ),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Text(mails[index].history,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w900,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        mails[index].isItFavorite =
                                            !mails[index].isItFavorite;
                                      },
                                    );
                                  },
                                  child: mails[index].isItFavorite == true
                                      ? Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      : Icon(
                                          Icons.star_border,
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Icon(
                              Icons.local_post_office,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "Mail",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            child: Icon(
                              Icons.video_camera_back,
                            ),
                          ),
                          Text("Meeting"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchText extends StatelessWidget {
  const SearchText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black26,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 24,
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          const Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search in here",
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  isDense: false,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 20,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mail {
  final String title;
  final String text;
  final String history;
  final Color color;
  late bool isItFavorite;

  Mail({
    required this.title,
    required this.text,
    required this.history,
    required this.color,
    required this.isItFavorite,
  });
}
