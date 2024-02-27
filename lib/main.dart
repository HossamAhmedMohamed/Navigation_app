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
      home: project1(),
    );
  }
}

class project1 extends StatefulWidget {
  const project1({super.key});

  @override
  State<project1> createState() => _project1State();
}

class _project1State extends State<project1> {
  int index = 0;
  List x = [
    " اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",
    "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير",
    "اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد. ",
    "لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن",
    "لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون",
    "سُـبْحانَ اللهِ",
    "الحَمْـدُ لله",
    "اللهُ أكْـبَر",
    "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ"
  ];
  void onpressed(String direction) {
    if (direction == "left") {
      setState(() {
        if (index == 0) {
          index = x.length - 1;
        } else {
          index--;
        }
      });
    } else if (direction == "right") {
      setState(() {
        if (index == x.length - 1) {
          index = 0;
        } else {
          index++;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            margin: EdgeInsets.symmetric(horizontal:50),
              child: Text(
                x[index],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    onpressed("left");
                  },
                  backgroundColor: Colors.orange,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                FloatingActionButton(
                    onPressed: () {
                      onpressed("right");
                    },
                    shape: CircleBorder(),
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.arrow_right,
                      size: 60,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
