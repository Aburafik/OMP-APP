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
        title: Text("General Maintenance"),
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
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionOneAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(
              question: questionTwo,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionTwoAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionTwoAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(
              question: questionThree,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionThreeAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionThreeAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(
              question: questionFour,
            ),
            QuestionsTextFormField(),
            Question(
              question: questionFive,
            ),
            QuestionsTextFormField(),
            Question(question: questionSix),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionSixAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionSixAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(question: questionSeven),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionSevenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionSevenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(question: questionEight),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionEightAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionEightAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(
              question: questionNine,
            ),
            QuestionsTextFormField(),
            Question(question: questionTen),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionTenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionTenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionTenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionTenAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(question: questionEleven),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionOneAnswer: questionElevenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionElevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionOneAnswer: questionElevenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionElevenAnswer = value!);
                  },
                ),
                Spacer()
              ],
            ),
            Question(question: questionTwelve),
            QuestionsTextFormField(),
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

String questionNine = "9. How often are the labels replaced?";
String questionTen =
    "10. Do you have a shutdown procedure clearly displayed at your sites?";
String questionEleven =
    "11. Do you have an online monitoring system for all your PV systems?";
String questionTwelve = "12. What is your total installed capacity?";
