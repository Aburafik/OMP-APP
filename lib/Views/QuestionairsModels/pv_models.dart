// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

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
  AuthUser authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
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
                  questionAnswer: questionOneAnswer,
                  title: "Yearly",
                  value: "Yearly",
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
                  title: "Quarterly",
                  value: "Quartely",
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
                  questionAnswer: questionSixAnswer,
                  title: "Every 5 Years",
                  value: "Every 5 years",
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
            Question(question: questionSeven),
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
                  questionAnswer: questionEightAnswer,
                  title: "Every 5 years ",
                  value: "Every 5 years ",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
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
                onPressed: () async {
                  startLoading();

                  await authUser.sendQuestion(
                    senderLocation: userProvider.userData['location'],
                    id: userId,
                    senderName: userProvider.userData['full_name'],
                    senderContact: userProvider.userData['contact'],
                    context: context,
                    questionTitle: "Battery System(for-off-grid system)",
                    questionOne: questionOne,
                    questionTwo: questionTwo,
                    questionThree: questionThree,
                    questionFour: questionFour,
                    questionFive: questionFive,
                    questionSix: questionSix,
                    questionSeven: questionSeven,
                    questionEight: questionEight,
                    questionOneAnswer: questionOneAnswer,
                    questionTwoAnswer: questionTwoAnswer,
                    questionThreeAnswer: questionThreeAnswer,
                    questionFourAnswer: questionFourAnswer,
                    questionFiveAnswer: questionFiveAnswer,
                    questionSixAnswer: questionSixAnswer,
                    questionSevenAnswer: questionSevenAnswer,
                    questionEightAnswer: questionEightAnswer,
                  );
                  stopLoading();

                  Navigator.pushNamedAndRemoveUntil(
                      context, "/request-message", (route) => false);
                },
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
