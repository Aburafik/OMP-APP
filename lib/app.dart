import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Views/Auths/forgot_password_view.dart';
import 'package:omp_app/Views/Auths/register_technician.dart';
import 'package:omp_app/Views/Auths/registration_auth_decide.dart';
import 'package:omp_app/Views/Auths/sign_in_view.dart';
import 'package:omp_app/Views/Auths/sign_up_view.dart';
import 'package:omp_app/Views/Notifications/notifications.dart';
import 'package:omp_app/Views/Onboarding/onboarding_view.dart';
import 'package:omp_app/Views/Onboarding/splash_screen.dart';
import 'package:omp_app/Views/QuestionairsModels/battery_system.dart';
import 'package:omp_app/Views/QuestionairsModels/earthing_lightening.dart';
import 'package:omp_app/Views/QuestionairsModels/general_maintenance.dart';
import 'package:omp_app/Views/QuestionairsModels/dc_ac.dart';
import 'package:omp_app/Views/QuestionairsModels/inverters.dart';
import 'package:omp_app/Views/QuestionairsModels/isolation_transformer.dart';
import 'package:omp_app/Views/QuestionairsModels/pv_array.dart';
import 'package:omp_app/Views/QuestionairsModels/pv_models.dart';
import 'package:omp_app/Views/QuestionairsModels/system_monitoring.dart';
import 'package:omp_app/Views/Technicians/request_success_screen.dart';
import 'package:omp_app/Views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            titleTextStyle: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20,color: BLACK_COLOR),
            iconTheme: IconThemeData(color: BLACK_COLOR),
            elevation: 0,
            backgroundColor: Color(0xffF4F4F4)),
        scaffoldBackgroundColor: const Color(0xffF4F4F4),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/onboarding-view": (context) => const OnboardingView(),
        "/sign-in-view": (context) => const SignInVC(),
        "/sign-up-view": (context) => const SignUpVC(),
        "/reset-password-view": (context) => const ForgotPasswordVC(),
        "/notification-view": (context) => const Notifications(),
        "/home-page": (context) => const HomePage(),
        "/request-message": (context) => const RequestSuccessMessageVC(),
        "/registration-decide": (context) => const RegistrationDecideVC(),
        "/register-technician": (context) => const RegisterTechnicianVC(),
        "/general-maintenance-page": (context) => const GeneralMaintenanceVC(),
        "/pv-models-page": (context) => const PvModelsVC(),
        "/pv-array-page": (context) => const PvArraysVC(),
        "/inverters-page": (context) => const InvertersVC(),
        "/system-monitoring-page": (context) => const SystemMonitoringVC(),
        "/dc-ac-page": (context) => const DcAndAcVC(),
        "/battery-system-page": (context) => const BatterySystemVC(),
        "/isolation-transformer-system-page": (context) => const IsolationTransformerSystemTestVC(),
        "/earthing-Lightening-page": (context) => const EarthingAndLighteningSystemVC(),
      },
    );
  }
}
