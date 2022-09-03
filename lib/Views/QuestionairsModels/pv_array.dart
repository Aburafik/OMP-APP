import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

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
  AuthUser authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
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
                  title: "Every 5yrs",
                  value: "Every 5yrs",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
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
                    questionTitle:
                        "PV Arrrays and Supporting Frames and Structures",
                    questionOne: questionOne,
                    questionTwo: questionTwo,
                    questionThree: questionThree,
                    questionFour: questionFour,
                    questionFive: questionFive,
                    questionOneAnswer: questionOneAnswer,
                    questionTwoAnswer: questionTwoAnswer,
                    questionThreeAnswer: questionThreeAnswer,
                    questionFourAnswer: questionFourAnswer,
                    questionFiveAnswer: questionFiveAnswer,
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
    "1.How frequently do you verify that each PV module is firmly installed by examining the penetration, physical connections, and fixing components?";
String questionTwo =
    "2 .How frequently do you inspect all hardware for rust and remove it before repainting or replacing it if necessary?";

String questionThree =
    "3. How frequently do you examine the state of the bonding conductor?";
String questionFour =
    "4. How frequently do you inspect PV arrays for unusual position and movement?";

String questionFive =
    "5. How frequently are the bypass diodes tested for functionality?";
