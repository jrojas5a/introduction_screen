import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors/asesorate.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Onboarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key key}) : super(key: key);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {

    return Column(

      children: <Widget>[

        Image.asset(
          'assets/$assetName.jpg',
            
          ),
        

      ],
      
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 24.0, fontFamily: 'OpenSansBold');
    
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700,fontFamily: 'OpenSansRegular'),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
      
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "el trámite legal que necesitas",
          iconTitleWidget: Image.asset(
            "assets/search-solid.png", 
            color: asesorateColor,
            width: 60,
            height: 60,
          ),
          body: "el trámite legal que necesitas",
          image: _buildImage('onboarding-1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Llena los datos",
          iconTitleWidget: Image.asset(
            "assets/document.png", 
            color: asesorateColor,
            width: 60,
            height: 60,
          ),
          body:
              "en el formulario del documento",
          image: _buildImage('onboarding-2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Buscaremos", 
          iconTitleWidget: Image.asset(
            "assets/user-check-solid.png", 
            color: asesorateColor,
            width: 60,
            height: 60,
          ),                    
          body:
              "el abogado ideal para tu trámite",
          image: _buildImage('onboarding-3'),

          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Paga",
          iconTitleWidget: Image.asset(
            "assets/credit-card.png", 
            color: asesorateColor,
            width: 60,
            height: 60,
          ),
          body:
              "con tu tarjeta de crédito",
          image: _buildImage('onboarding-4'),

          decoration: pageDecoration,
        ),
        
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Saltar'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Listo', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: asesorateColor,
        activeColor: asesorateDark,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asesorate')),
      body: const Center(child: Text("Asesorate App")),
    );
  }
}
