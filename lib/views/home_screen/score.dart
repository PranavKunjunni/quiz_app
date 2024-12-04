import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_app/views/select_screen/select_screen.dart';

class Score extends StatefulWidget {
  final int Totalanswer;
  final List questions;
  const Score({super.key, required this.Totalanswer, required this.questions});

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  int starCount = 0;

  @override
  void initState() {
    calculatePercentage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 5.0,
            percent: widget.Totalanswer / widget.questions.length,
            center: Text(
              "${((widget.Totalanswer / widget.questions.length) * 100).toStringAsFixed(0)}%", // Display as percentage
              style: TextStyle(
                color: Colors.yellow[900],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            progressColor: Colors.red,
            backgroundColor: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(
                    left: 15, right: 15, bottom: index == 1 ? 30 : 0),
                child: Icon(
                  Icons.star,
                  size: index == 1 ? 70 : 40,
                  color: starCount > index ? Colors.yellow : Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          if (starCount == 3)
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.amber[700],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (starCount == 2)
            Text(
              "JUST OKEY BRO",
              style: TextStyle(
                color: Colors.amber[700],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (starCount == 1)
            Text(
              "JUST TRY AGIAN",
              style: TextStyle(
                color: Colors.amber[700],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Your Score",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${widget.Totalanswer}/${widget.questions.length}",
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Icon(
                        Icons.share,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SelectScreen(
                              // questions: widget.questions,
                              ),
                        ),
                      );
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      height: 50,
                      // width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.replay_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Retry",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void calculatePercentage() {
    num percentage = (widget.Totalanswer / widget.questions.length) * 100;
    if (percentage >= 90) {
      starCount = 3;
    } else if (percentage >= 50) {
      starCount = 2;
    } else if (percentage >= 30) {
      starCount = 1;
    }
    setState(() {});
  }
}
