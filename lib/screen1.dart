import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool t = false;
  List Qustion = [
    "1.Which of these sounds would you associate with the heart?",
    "2.Who is the 'Bharat Ka Veer Putra Aaccording to the title of a 2013 TV Series?",
    "3.Which film is this song from??",
    "4.With Which of these cards would you associate the phrase 'Aam Aadmi ka Adhikaar'?",
    "5.The first world championship in what sport is planned to be held in 2017, though the game has been played since 1877?",
    "6.Agar aap Thumka laga rahe hai to inme se kya kar rahe Hai?"
    "7.To respect whose word did the five Pandavas marry Draupadi??"
    "8.Which of these usually eaten hot??"
  ];
  List Answer = [
    "Dhak Dhak",
    "Maharana Pratap",
    "Chennai Express",
    "AADHAR Card",
    "Test Cricket",
    "Nirtya Kar rahe Hai",
    "Kunti",
    "Pakoda",
  ];

  List A = [
    "Tap Tap",
    "tipu sultan",
    "Mere Dad Ki Maruti",
    "PAN Card",
    "Test Cricket",
    "Kha Rahe Hai",
    "Krishna",
    "Rasgulla",
  ];
  List B = [
    "Rahul Gandhi",
    "Chandragupta Maurya",
    "Chennai Express",
    "Voter ID Card",
    "Rugby Union",
    "Chitrkari Kar rahe Hai",
    "Indra",
    "Pakoda",
  ];
  List C = [
    "Click Click",
    "Maharana Pratap",
    "Ghanchakkar",
    "AADHAR Card",
    "Kabaddi",
    "Khana Kha Rahe hai",
    "Kunti",
    "Laddu",
  ];
  List D = [
    "Dhak Dhak",
    "Ashoka",
    "Race 2",
    "Ration Card",
    "Carrom",
    "Nirtya Kar rahe Hai",
    "Madri",
    "Faluda",
  ];
  List<Color> c = [
    Colors.purple.shade100,
    Colors.purple.shade200,
    Colors.purple.shade300,
    Colors.purple.shade400,
    Colors.purple.shade500,
    Colors.purple.shade600,
    Colors.purple.shade700,
    Colors.purple.shade800,
  ];
  List Ansonline = [];

  int i = 0, j = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: c[i],
                  alignment: Alignment.center,
                  child: Text(
                    "${Qustion[i]}",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold),
                  ),
                ),),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                Ansonline.add("${A[i]}");
                                setState(() {
                                  if (Ansonline[i] == Answer[i]) {
                                    Navigator.pushNamed(context, 'second');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'third');
                                    i = 0;
                                    j = 0;
                                    Ansonline.clear();
                                  }
                                },);
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1E2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "A.${A[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                Ansonline.add("${B[i]}");
                                setState(() {
                                  if (Ansonline[i] == Answer[i]) {
                                    Navigator.pushNamed(context, 'second');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'third');
                                    i = 0;
                                    j = 0;
                                    Ansonline.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "B.${C[i]}",

                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                Ansonline.add("${C[i]}");

                                setState(() {
                                  if (Ansonline[i] == Answer[i]) {
                                    Navigator.pushNamed(context, 'second');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'third');
                                    i = 0;
                                    j = 0;
                                    Ansonline.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "C.${B[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {
                              if (j < 6) {
                                Ansonline.add("${D[i]}");

                                setState(() {
                                  if (Ansonline[i] == Answer[i]) {
                                    Navigator.pushNamed(context, 'second');
                                    if (i < 4) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 4) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.pushNamed(context, 'third');
                                    i = 0;
                                    j = 0;
                                    Ansonline.clear();
                                  }
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xff1e2022),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "D.${D[i]}",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Visibility(
                      visible: j >= 6 ? true : false,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            j = 0;
                            i = 0;
                            Ansonline.clear();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple),
                        child: Center(
                          child: Text(
                            "Reset",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
