import 'package:flutter/material.dart';

class RequestDetailsVC extends StatelessWidget {
  RequestDetailsVC({super.key, this.requestDetails});
  dynamic requestDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(requestDetails['questionTitle']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              questionAnswerWidget(
                  question: requestDetails['questionOne'],
                  answer: requestDetails['questionOneAnswer']),
              questionAnswerWidget(
                  question: requestDetails['questionTwo'],
                  answer: requestDetails['questionTwoAnswer']),
              questionAnswerWidget(
                  question: requestDetails['questionThree'],
                  answer: requestDetails['questionThreeAnswer']),
              questionAnswerWidget(
                  question: requestDetails['questionFour'],
                  answer: requestDetails['questionFourAnswer']),
              questionAnswerWidget(
                  question: requestDetails['questionFive'],
                  answer: requestDetails['questionFiveAnswer']),
              requestDetails['questionSix'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionSix'],
                      answer: requestDetails['questionSixAnswer'])
                  : Wrap(),
              requestDetails['questionSeven'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionSeven'],
                      answer: requestDetails['questionSevenAnswer'])
                  : Wrap(),
              requestDetails['questionEight'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionEight'],
                      answer: requestDetails['questionEightAnswer'])
                  : Wrap(),
              requestDetails['questionNine'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionNine'],
                      answer: requestDetails['questionNineAnswer'])
                  : Wrap(),
              requestDetails['questionTen'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionTen'],
                      answer: requestDetails['questionTenAnswer'])
                  : Wrap(),
              requestDetails['questionEleven'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionEleven'],
                      answer: requestDetails['questionElevenAnswer'])
                  : Wrap(),
              requestDetails['questionTwelve'] != null
                  ? questionAnswerWidget(
                      question: requestDetails['questionTwelve'],
                      answer: requestDetails['questionTwelveAnswer'])
                  : Wrap(),
            ],
          ),
        ),
      ),
    );
  }
}

questionAnswerWidget({String? question, String? answer}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(question!),
      Text(
        answer!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Divider(),
    ],
  );
}
