import 'package:flutter/material.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';

class PvArraysVC extends StatefulWidget {
  const PvArraysVC({Key? key}) : super(key: key);

  @override
  State<PvArraysVC> createState() => _PvArraysVCState();
}

class _PvArraysVCState extends State<PvArraysVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PV Arrrays and Supporting Frames and Structures"),
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
                  questionOneAnswer: questionOneAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionOneAnswer,
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
                  questionOneAnswer: questionTwoAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
               
                AnswerOptionsComponent(
                  questionOneAnswer: questionTwoAnswer,
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
                  questionOneAnswer: questionThreeAnswer,
                  title: "Every 5yrs",
                  value: "Every 5yrs",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionThreeAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionThreeAnswer,
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
                  questionOneAnswer: questionFourAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionFourAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionFourAnswer,
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
                  questionOneAnswer: questionFiveAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionFiveAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionFiveAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionFiveAnswer = value!);
                  },
                ),
              ],
            ),

            // QuestionsTextFormField(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: CustomButtonComponent(
                buttonText: "Submit",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

String questionOne =
    "1.How frequently do you verify that each PV module is firmly installed by examining the penetration, physical connections, and fixing components?";
String questionTwo =
    "2 .How frequently do you inspect all hardware for rust and remove it before repainting or replacing it if necessary?";

String questionThree =
    "3. How frequently do you examine the state of the bonding conductor?";
String questionFour =
    "4. How frequently do you inspect PV arrays for unusual position and movement?";

String questionFive =
    "5. How frequently are the bypass diodes tested for functionality?";
