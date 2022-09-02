
import 'package:flutter/material.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
// import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';

class BatterySystemVC extends StatefulWidget {
  const BatterySystemVC({Key? key}) : super(key: key);

  @override
  State<BatterySystemVC> createState() => _BatterySystemVCState();
}

class _BatterySystemVCState extends State<BatterySystemVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";
  String questionSixAnswer = "";
  String questionSevenAnswer = "";
  String questionEightAnswer = "";
  String questionNineAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Battery System(for-off-grid system)"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Question(
              question: questionOne,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionOneAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionOneAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionOneAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                // Spacer()
              ],
            ),
            Question(
              question: questionTwo,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionTwoAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionTwoAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionTwoAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                // Spacer()
              ],
            ),
            Question(
              question: questionThree,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "Daily",
                  value: "Daily",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "N/a",
                  value: "N/a",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                // Spacer()
              ],
            ),
            Question(
              question: questionFour,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionFourAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionFourAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionFourAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionFourAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionFourAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionFourAnswer = value!);
                  },
                ),
              ],
            ),
            // QuestionsTextFormField(),
            Question(
              question: questionFive,
            ),

            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionFiveAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionFiveAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionFiveAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionFiveAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionFiveAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionFiveAnswer = value!);
                  },
                ),
              ],
            ),
            Question(
              question: questionSix,
            ),

            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionSixAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSixAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSixAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
              ],
            ),

            Question(
              question: questionSeven,
            ),

            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionSevenAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSevenAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSevenAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
              ],
            ),
            Question(
              question: questionEight,
            ),

            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionEightAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionEightAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionEightAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
              ],
            ),
            Question(
              question: questionNine,
            ),

            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionNineAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionNineAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionNineAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
                  onChanged: (String? value) {
                    setState(() => questionNineAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionNineAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionNineAnswer = value!);
                  },
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: CustomButtonComponent(
                buttonText: "Submit",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String questionOne =
    "1. How frequently do you inspect warning signs and labels, replacing them as necessary?";
String questionTwo =
    "2. How frequently do you clean the enclosure or container?";

String questionThree =
    "3. How frequently do you inspect the battery bank for structural integrity, cracks, bulging, chemical leakage, and battery enclosure integrity?";
String questionFour =
    "4. How frequently do you inspect all hardware for corrosion, clean off any rust, and repaint as necessary?";

String questionFive =
    "5. How frequently do you test the voltage and resistance of a module, cell, or link, as necessary?";

String questionSix =
    "6. How frequently do you clean off the dust from the louvres and inspect the battery room's ventilation system?";

String questionSeven =
    "7. How frequently do you look for loose electrical connections across the battery bank?";
String questionEight =
    "8. How frequently do you inspect the battery's capacity?";
String questionNine =
    "9. How frequently are the overcharging and over discharging features checked?";
