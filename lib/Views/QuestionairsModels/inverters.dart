import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

class InvertersVC extends StatefulWidget {
  const InvertersVC({Key? key}) : super(key: key);

  @override
  State<InvertersVC> createState() => _InvertersVCState();
}

class _InvertersVCState extends State<InvertersVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";
  String questionSixAnswer = "";
  AuthUser authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inverters"),
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

            ///0240551119

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
                    questionTitle: "Inverters",
                    questionOne: questionOne,
                    questionTwo: questionTwo,
                    questionThree: questionThree,
                    questionFour: questionFour,
                    questionFive: questionFive,
                    questionSix: questionSix,
                    questionOneAnswer: questionOneAnswer,
                    questionTwoAnswer: questionTwoAnswer,
                    questionThreeAnswer: questionThreeAnswer,
                    questionFourAnswer: questionFourAnswer,
                    questionFiveAnswer: questionFiveAnswer,
                    questionSixAnswer: questionSixAnswer,
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
    "1.How frequently do you look for warning labels, signs, and potential replacements?";
String questionTwo =
    "2 .How frequently do you inspect the ventilation system and dust the inverter cabinet?";

String questionThree =
    "3. How frequently do you inspect cables for loose connections?";
String questionFour =
    "4. How frequently do you look for unusual operating temperatures?";

String questionFive =
    "5. How frequently do you test features like automatic disconnection upon grid power supply?";

String questionSix =
    "6. How frequently are the input and output power measured to check that the inverters are operating properly?";
