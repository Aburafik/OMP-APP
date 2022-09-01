import 'package:flutter/material.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';

class PvModelsVC extends StatefulWidget {
  const PvModelsVC({Key? key}) : super(key: key);

  @override
  State<PvModelsVC> createState() => _PvModelsVCVCState();
}

class _PvModelsVCVCState extends State<PvModelsVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";
  String questionSixAnswer = "";
  String questionSevenAnswer = "";
  String questionEightAnswer = "";
  String questionTenAnswer = "";
  String questionElevenAnswer = "";
  String questionTwelveAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PV Models"),
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
                  title: "Quarterly",
                  value: "Quartely",
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
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionThreeAnswer,
                  title: "Bi annual",
                  value: "Bi annual",
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
            Question(question: questionSix),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionSixAnswer,
                  title: "Every 5 Years",
                  value: "Every 5 years",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionSixAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
              ],
            ),
            Question(question: questionSeven),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionSevenAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionSevenAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
              ],
            ),
            Question(question: questionEight),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionEightAnswer,
                  title: "Every 5 years ",
                  value: "Every 5 years ",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionEightAnswer,
                  title: "Yearly",
                  value: "Yearly",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),

                AnswerOptionsComponent(
                  questionOneAnswer: questionEightAnswer,
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                // Spacer()
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
    "1.How frequently do you look for labels and warning signs that might need to be replaced? ";
String questionTwo =
    "2 .How frequently do you wash the PV modules with water to eliminate impurities like dust and particles from the surface ? ";

String questionThree =
    "3. How frequently do you inspect solar panels for damage such as burn marks, bubble formation, cracking, broken glass, discoloration, and corrosion? Also, what about junction boxes, cables, and connectors?";
String questionFour =
    "4.How frequently do you check hot spots using an infrared camera?";

String questionFive =
    "5. How frequently are the bypass diodes tested for functionality?";

String questionSix = "6. Does your company have PV systems with storage?";

String questionSeven =
    "7. Are they housed and kept within optimal operating temperature?";
String questionEight = "8. Do you label your solar PV systems?";
