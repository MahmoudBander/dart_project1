// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
      theme: ThemeData.light(useMaterial3: true),
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  // changeIndex(String dirction) {
  //   if (dirction == "right") {
  //     setState(() {
  //       if (myIndex == Poetry.length - 1) {
  //         myIndex = 0;
  //       } else {
  //         myIndex++;
  //       }
  //     });
  //   } else if (dirction == "left") {
  //     setState(() {
  //       if (myIndex == 0) {
  //         myIndex = Poetry.length - 1;
  //       } else {
  //         myIndex--;
  //       }
  //     });
  //   }
  // }
  changeIndex(String dirction) {
    switch (dirction) {
      case "right":
        if (dirction == "right") {
          setState(() {
            if (myIndex == Poetry.length - 1) {
              myIndex = 0;
            } else {
              myIndex++;
            }
          });
        }
        break;
      case "left":
        setState(() {
        if (myIndex == 0) {
          myIndex = Poetry.length - 1;
        } else {
          myIndex--;
        }
      });
        break;
    }
  }

  List Poetry = [
    {
      "line1": "1-رَمَتِ الفُؤَادَ مَليحَةٌ عَذراءُ",
      "line2": "بِسِهامِ لَحظٍ ما لَهُنَّ دَواءُ",
    },
    {
      "line1": "2-مَرَّت أَوانَ العيدِ بَينَ نَواهِدٍ",
      "line2": "مِثلِ الشُموسِ لِحاظُهُنَّ ظُباءُ",
    },
    {
      "line1": "3-فَاِغتالَني سَقَمي الَّذي في باطِني",
      "line2": "أَخفَيتُهُ فَأَذاعَهُ الإِخفاءُ",
    },
    {
      "line1": "4-وَرَنَت فَقُلتُ غَزالَةٌ مَذعورَةٌ",
      "line2": "قَد راعَها وَسطَ الفَلاةِ بَلاءُ",
    },
    {
      "line1": "5-وَبَدَت فَقُلتُ البَدرُ لَيلَةَ تِمِّهِ",
      "line2": "قَد قَلَّدَتهُ نُجومَها الجَوزاءُ",
    },
    {
      "line1": "6-بَسَمَت فَلاحَ ضِياءُ لُؤلُؤِ ثَغرِها",
      "line2": "فيهِ لِداءِ العاشِقينَ شِفاءُ",
    },
    {
      "line1": "7-سَجَدَت تُعَظِّمُ رَبَّها فَتَمايَلَت",
      "line2": "لِجَلالِها أَربابُنا العُظَماءُ",
    },
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Poetry[myIndex]["line1"],
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              Poetry[myIndex]["line2"],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                    // setState(() {
                    //   if (myIndex == 0) {
                    //     myIndex = Poetry.length-1;
                    //   } else {
                    //     myIndex--;
                    //   }
                    // });
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("right");
                    // setState(() {
                    //   if (myIndex == Poetry.length-1) {
                    //     myIndex = 0;
                    //   }else{
                    //     myIndex++;
                    //   }
                    // });
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
