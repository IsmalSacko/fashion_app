import 'package:fashio_app/src/onboarding/widgets/page_1.dart';
import 'package:fashio_app/src/onboarding/widgets/page_2.dart';
import 'package:fashio_app/src/onboarding/widgets/page_3.dart';
import 'package:fashio_app/src/onboarding/widgets/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/onbording_notifier.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: context.read<OnboardingNotifier>().selectedPage
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //final pro = Provider.of<OnbordingNotifier>(context);
    return  Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              context.read<OnboardingNotifier>().setSelectedPage = page;
            },
            children: const [
              PageOne(),
              PageTwo(),
              PageTree(),
              WelcomeScreen()

            ],
          ),
          //Positioned(child: child)
        ],
      )
    );
}
}

