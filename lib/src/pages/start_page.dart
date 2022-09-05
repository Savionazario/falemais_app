import 'package:falemais_app/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/logobranca.png",
                    width: 200,
                    height: 140,
                    scale: 0.1,
                  ),
                  // Text("TELZIR",
                  //   style: GoogleFonts.hor(
                  //     textStyle: TextStyle(
                  //       fontStyle: FontStyle.italic,
                  //       fontSize: 25,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold
                  //     )
                  //   ),
                  // )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Image.asset("assets/vectorclaro.png",
                scale: 1.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 35),
              child: Text("Bem-vindo ao novo aplicativo da Telzir",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF121842),
                  )
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 18.0, right: 18.0),
              child: Text("Somos uma empresa especializada em chamadas de longa distância por todo Brasil",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF121842),
                    )
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SizedBox(
                height: 45,
                width: 150,
                child: TextButton(
                  child: Text("Continuar",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      )
                    )
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    backgroundColor: Color(0xFF121842)
                  ),
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
