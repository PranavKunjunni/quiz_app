import 'package:flutter/material.dart';
import 'package:linear_timer/linear_timer.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/views/home_screen/score.dart';

class HomeScreen extends StatefulWidget {
  final List<Map<String, dynamic>> questions;
  const HomeScreen({super.key, required this.questions});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int questionIndex = 0;
  int? SelectedAsindex;
  int TotalMark = 0;

  void nextQuestion() {
    if (questionIndex < widget.questions.length - 1) {
      setState(() {
        questionIndex++;
        SelectedAsindex = null;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Score(
            Totalanswer: TotalMark,
            questions: widget.questions,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "QUIZ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Text(
            "${questionIndex + 1}/${widget.questions.length}",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearTimer(
            key: ValueKey(questionIndex),
            color: Colors.red,
            duration: Duration(seconds: 5),
            onTimerEnd: () {
              nextQuestion();
            },
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              width: 350,
              // height: 400,
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        widget.questions[questionIndex]['question'],
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (SelectedAsindex ==
                        widget.questions[questionIndex]['answer'])
                      Lottie.asset(
                        "assets/animations/Animation - 1731925013802.json",
                      )
                    else if (SelectedAsindex ==
                        widget.questions[questionIndex]['answer'])
                      Lottie.asset(
                        "assets/animations/Animation - 1731925013802.json",
                      )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: List.generate(
                widget.questions[questionIndex]['options'].length,
                // 4,
                (optionIndex) => Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      if (SelectedAsindex == null) {
                        SelectedAsindex = optionIndex;
                        if (widget.questions[questionIndex]['answer'] ==
                            SelectedAsindex) {
                          TotalMark++;
                          print(TotalMark);
                        }
                        setState(() {});
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          // color: Colors.white,
                          color: getColor(optionIndex),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.questions[questionIndex]['options']
                                  [optionIndex],
                              style: TextStyle(
                                  // color: SelectedColor == optionIndex
                                  //     ? Colors.red
                                  //     : Colors.white,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.circle_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          if (SelectedAsindex != null)
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  // if (SelectedAsindex != null) {
                  //   if (questionIndex < widget.questions.length - 1) {
                  //     setState(() {});
                  //     questionIndex++;
                  //     SelectedAsindex = null;
                  //   } else {
                  //     Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => Score(
                  //           Totalanswer: TotalMark,
                  //           questions: widget.questions,
                  //         ),
                  //       ),
                  //     );
                  //   }
                  // }
                  nextQuestion();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueGrey),
                  alignment: Alignment.center,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Color getColor(int clickedIndex) {
    if (SelectedAsindex != null) {
      if (widget.questions[questionIndex]['answer'] == clickedIndex) {
        return Colors.green;
      }
    }
    if (SelectedAsindex == clickedIndex) {
      if (SelectedAsindex == widget.questions[questionIndex]['answer']) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }
}
