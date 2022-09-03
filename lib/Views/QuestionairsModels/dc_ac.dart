import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';
import 'package:provider/provider.dart';

class DcAndAcVC extends StatefulWidget {
  const DcAndAcVC({Key? key}) : super(key: key);

  @override
  State<DcAndAcVC> createState() => _DcAndAcVCState();
}

class _DcAndAcVCState extends State<DcAndAcVC> {
  String questionOneAnswer = "";
  String questionTwoAnswer = "";
  String questionThreeAnswer = "";
  String questionFourAnswer = "";
  String questionFiveAnswer = "";
  String questionSixAnswer = "";
  String questionSevenAnswer = "";
  String questionEightAnswer = "";
  String questionNineAnswer = "";
  AuthUser authUser = AuthUser();

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("DC & AC Slide of System"),
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
                  title: "Every 5yrs ",
                  value: "Every 5yrs ",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
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
                  title: "N/A",
                  value: "N/A",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
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
                    questionTitle: "DC & AC Slide of System",
                    questionOne: questionOne,
                    questionTwo: questionTwo,
                    questionThree: questionThree,
                    questionFour: questionFour,
                    questionFive: questionFive,
                    questionSix: questionSix,
                    questionSeven: questionSeven,
                    questionEight: questionEight,
                    questionNine: questionNine,
                    questionOneAnswer: questionOneAnswer,
                    questionTwoAnswer: questionTwoAnswer,
                    questionThreeAnswer: questionThreeAnswer,
                    questionFourAnswer: questionFourAnswer,
                    questionFiveAnswer: questionFiveAnswer,
                    questionSixAnswer: questionSixAnswer,
                    questionSevenAnswer: questionSevenAnswer,
                    questionEightAnswer: questionEightAnswer,
                    questionNineAnswer: questionNineAnswer,
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
    "1. How frequently do you look for labels and warning signs that might need to be replaced?";
String questionTwo =
    "2. How frequently do you inspect cables for earth faults, short or open circuits, arcing, pulling out of connectors, flaws, and cracks?";

String questionThree =
    "3. How frequently do you verify that circuit breakers, disconnect switches, and fuses are in good working order?";
String questionFour =
    "4. How frequently do you inspect the condition of surge arresters and replace them as the manufacturer directs?";

String questionFive =
    "5. How frequently do you inspect for insects, water incursion, or corrosion?";

String questionSix =
    "6. How frequently do you test DC circuits for insulation, polarity, and the operation of safety features, or as required by the CoP?";

String questionSeven =
    "7. How frequently do you inspect for insects, water ingress, or corrosion?";

String questionEight =
    "8. How frequently do you perform AC circuit testing, such as insulation tests, polarity tests, protection device function tests, and residual current device/residual circuit breaker with overcurrent protection (RCD/RCBO) tripping times, or as otherwise required by the Conditions of Performance?";
