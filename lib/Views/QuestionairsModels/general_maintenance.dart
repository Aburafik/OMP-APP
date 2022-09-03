import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Components/answer_options_component.dart';
import 'package:omp_app/Components/answer_textform_field.dart';
import 'package:omp_app/Components/custom_button.dart';
import 'package:omp_app/Components/question_text_component.dart';
import 'package:omp_app/Providers/user_provider.dart';
import 'package:omp_app/Repository/auth_repo.dart';
import 'package:provider/provider.dart';

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
  AuthUser authUser = AuthUser();

  TextEditingController questionFourAnwerController = TextEditingController();
  TextEditingController questionFiveAnwerController = TextEditingController();
  TextEditingController questionNineAnwerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text("General Maintenance"),
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
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionOneAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionOneAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(
              question: questionTwo,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionTwoAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionTwoAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionTwoAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(
              question: questionThree,
            ),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionThreeAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionThreeAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(
              question: questionFour,
            ),
            AnswerTextFormField(
              controller: questionFourAnwerController,
            ),
            Question(
              question: questionFive,
            ),
            AnswerTextFormField(
              controller: questionFiveAnwerController,
            ),
            Question(question: questionSix),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionSixAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSixAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionSixAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(question: questionSeven),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionSevenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionSevenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionSevenAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(question: questionEight),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionEightAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionEightAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionEightAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(
              question: questionNine,
            ),
            AnswerTextFormField(
              controller: questionNineAnwerController,
            ),
            Question(question: questionTen),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionTenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionTenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionTenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionTenAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(question: questionEleven),
            Row(
              children: [
                AnswerOptionsComponent(
                  questionAnswer: questionElevenAnswer,
                  title: "Yes",
                  value: "Yes",
                  onChanged: (String? value) {
                    setState(() => questionElevenAnswer = value!);
                  },
                ),
                AnswerOptionsComponent(
                  questionAnswer: questionElevenAnswer,
                  title: "No",
                  value: "No",
                  onChanged: (String? value) {
                    setState(() => questionElevenAnswer = value!);
                  },
                ),
                const Spacer()
              ],
            ),
            Question(question: questionTwelve),
            AnswerTextFormField(),
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
                      questionTitle: "General Maintenance",
                      questionOne: questionOne,
                      questionTwo: questionTwo,
                      questionThree: questionThree,
                      questionFour: questionFour,
                      questionFive: questionFive,
                      questionSix: questionSix,
                      questionSeven: questionSeven,
                      questionEight: questionEight,
                      questionNine: questionNine,
                      questionTen: questionTen,
                      questionEleven: questionEleven,
                      questionTwelve: questionTwelve,
                      questionOneAnswer: questionOneAnswer,
                      questionTwoAnswer: questionTwoAnswer,
                      questionThreeAnswer: questionThreeAnswer,
                      questionFourAnswer: questionFourAnwerController.text,
                      questionFiveAnswer: questionFiveAnwerController.text,
                      questionSixAnswer: questionSixAnswer,
                      questionSevenAnswer: questionSevenAnswer,
                      questionEightAnswer: questionEightAnswer,
                      questionNineAnswer: questionNineAnwerController.text,
                      questionTenAnswer: questionTenAnswer,
                      questionElevenAnswer: questionElevenAnswer,
                      questionTwelveAnswer: questionTwelveAnswer);
                  stopLoading();

                  Navigator.pushNamedAndRemoveUntil(
                      context, "/request-message", (route) => false);

                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, "/request-message", (route) => false);
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
