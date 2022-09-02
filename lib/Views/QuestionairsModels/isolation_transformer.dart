import 'package:flutter/material.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';

class IsolationTransformerSystemTestVC extends StatefulWidget {
  const IsolationTransformerSystemTestVC({Key? key}) : super(key: key);

  @override
  State<IsolationTransformerSystemTestVC> createState() =>
      _IsolationTransformerSystemTestVCState();
}

class _IsolationTransformerSystemTestVCState
    extends State<IsolationTransformerSystemTestVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Isolation Transformer and System Test "),
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
              ],
            ),
            Question(
              question: questionThree,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "Yearly",
                  value: "Yearly",
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
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
              ],
            ),
            Question(
              question: questionFour,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionFourAnswer,
                  title: "every 5yrs",
                  value: "every 5yrs",
                  onChanged: (String? value) {
                    setState(() => questionFourAnswer = value!);
                  },
                ),
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
                  title: "Every 5yrs",
                  value: "Every 5yrs",
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
    "1. How frequently do you look for labels and warning signs that might need to be replaced?";
String questionTwo =
    "2. How frequently do you inspect the isolation transformers' condition and clear the dust from the heat rejection fin?";

String questionThree =
    "3. How frequently do you do insulation tests and verify the primary and secondary voltage, current, power, and frequency?";
String questionFour =
    "4. How frequently do you measure the DC injection current and total harmonic current distortion?";

String questionFive =
    "5. How frequently do you open the isolation switch to examine the voltage and current waveforms and see if the anti-islanding time is sufficient in compliance with the demands of the power company?";
