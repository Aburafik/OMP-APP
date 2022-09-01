import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/custom_button.dart';

   class GeneralMaintenanceVC extends StatefulWidget {
  const GeneralMaintenanceVC({Key? key}) : super(key: key);

  @override
  State<GeneralMaintenanceVC> createState() => _GeneralMaintenanceVCState();
}

class _GeneralMaintenanceVCState extends State<GeneralMaintenanceVC> {
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
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: CustomButtonComponent(
                buttonText: "Submit",
                onPressed: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnswerOptionsComponent extends StatelessWidget {
  AnswerOptionsComponent(
      {Key? key,
      required this.questionOneAnswer,
      this.onChanged,
      this.title,
      this.value})
      : super(key: key);

  final String questionOneAnswer;
  void Function(String?)? onChanged;
  String? value;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: RadioListTile(
            title: Text(title!),
            value: value!,
            groupValue: questionOneAnswer,
            onChanged: onChanged));
  }
}

class Question extends StatelessWidget {
  Question({Key? key, this.question}) : super(key: key);

  String? question;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        question!,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontSize: 16, color: BLACK_COLOR),
      ),
    );
  }
}

class QuestionsTextFormField extends StatelessWidget {
  QuestionsTextFormField({Key? key, this.maxLines}) : super(key: key);

  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            border: outlineInputBorder,
            filled: true,
            fillColor: GREY_COLOR_20,
            focusedBorder: outlineInputBorder),
      ),
    );
  }
}

String questionOne =
    "1. Do you have a single major contractor on site who routinely provides maintenance support services? ";
String questionTwo =
    "2. Do you have an operations/maintenance organization chart? ";

String questionThree =
    "3. Are there standard operating procedures for each step of the maintenance process, and are they consistently followed?";
String questionFour = "4. Who can do maintenance?";

String questionFive = "5. How often does your company do maintenance?";

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
