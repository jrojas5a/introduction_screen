import 'package:flutter/material.dart';
import 'package:introduction_screen/src/model/page_view_model.dart';
import 'package:introduction_screen/src/ui/intro_content.dart';
import 'package:introduction_screen/src/colors/asesorate.dart';

class IntroPage extends StatelessWidget {
  final PageViewModel page;

  const IntroPage({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (page.image != null)
              Expanded(
                flex: page.decoration.imageFlex,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Padding(
                      padding: page.decoration.imagePadding,
                      child: page.image,
                    ),
                    Positioned(
                      bottom: -30.0,
                      child:Container(
                        width: 180.0,
                        height: 180.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      )
                    ),
                    Positioned(
                      bottom: 60.0,
                      child: page.iconTitleWidget,
                    )
                  ]
                ),
              ),
            Expanded(
              flex: page.decoration.bodyFlex,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: IntroContent(page: page),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
