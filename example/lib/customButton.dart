import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 
class CustomButton extends StatelessWidget {
  CustomButton({@required this.onPressed});
  final GestureTapCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue[900],
      splashColor: Colors.redAccent,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Image(
              color: Colors.white,
              image: AssetImage(
                        'assets/f.png',
                ),
              height: 30.0,  
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              "Registrarme con Facebook",
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}


class CustomButtonGoogle extends StatelessWidget {
  CustomButtonGoogle({@required this.onPressed});
  final GestureTapCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white,
      splashColor: Colors.redAccent,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Image(
              image: AssetImage(
                        'assets/google.png',
                ),
              height: 30.0,  
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Registrarme con Google     ",
              maxLines: 1,
              style: TextStyle(color: Color.fromRGBO(88, 89, 91, 1), fontSize: 18.0),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}


class CustomButtonEmail extends StatelessWidget {
  CustomButtonEmail({@required this.onPressed});
  final GestureTapCallback onPressed;
 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.red,
      splashColor: Colors.redAccent,
      child: Padding(
        padding: EdgeInsets.all(28.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            SizedBox(
              width: 50.0,
            ),
            Text(
              "Registrarme con Email     ",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}