import 'package:falemais_app/src/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();
  var azulEscuro = Color(0xFF121842);
  var azulClaro = Color(0xFFADB6E1);
  var _formKey = GlobalKey<FormState>();
  var _dddOrigemController = TextEditingController();
  var _dddDestinoController = TextEditingController();
  var _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                              Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 78.0),
                          child: Image.asset("assets/logobranca.png",
                            width: 110,
                            height: 80,
                            scale: 4.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 8.0),
                    child: Text("Conheça nosso mais novo produto",
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: SizedBox(
                      height: 120,
                      child: Card(
                        //color: Colors.indigo[50],
                        color: Color(0xFFE6E9F2),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )
                        ),
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("FaleMais ",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text("Pensando nos nossos clientes, a Telzir apresenta o FaleMais, produto no qual o usuário adquire um plano e pode falar de graça até um determinado tempo e só paga os minutos excedentes.",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                    child: Text("Escolha seu plano e calcule sua ligação",
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 112,
                          width: 114,
                          child: GestureDetector(
                            child: Card(
                              color: homeController.currentIndex == 1 ? azulEscuro : azulClaro,
                              //color: Colors.indigo[300],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/vectortelefone.png",
                                    scale: 4.3,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text("FaleMais 30",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              print("Cliquei");
                              if(homeController.currentIndex == 1){
                                setState(() {
                                  homeController.currentIndex = 0;
                                  homeController.plano = "";
                                });
                              }else{
                                setState(() {
                                  homeController.currentIndex = 1;
                                  homeController.plano = "faleMais30";
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 112,
                          width: 114,
                          child: GestureDetector(
                            child: Card(
                              color: homeController.currentIndex == 2 ? azulEscuro : azulClaro,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/vectortelefone.png",
                                    scale: 4.3,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Text("FaleMais 60",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                            fontSize: 15
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              print("Cliquei");
                              if(homeController.currentIndex == 2){
                                setState(() {
                                  homeController.currentIndex = 0;
                                  homeController.plano = "";
                                });
                              }else{
                                setState(() {
                                  homeController.currentIndex = 2;
                                  homeController.plano = "faleMais60";
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 112,
                          width: 114,
                          child: GestureDetector(
                            child: Card(
                              color: homeController.currentIndex == 3 ? azulEscuro : azulClaro,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/vectortelefone.png",
                                    scale: 4.3,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
                                    child: Text("FaleMais 120",
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                            fontSize: 15
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              print("Cliquei");
                              if(homeController.currentIndex == 3){
                                setState(() {
                                  homeController.currentIndex = 0;
                                  homeController.plano = "";
                                });
                              }else{
                                setState(() {
                                  homeController.currentIndex = 3;
                                  homeController.plano = "faleMais120";
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 4.0),
                        child: Container(
                          width: 165,
                          child: Center(
                            child: TextFormField(
                              controller: _dddOrigemController,
                              decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'DDD de origem',
                                  hintText: "Ex: 011",
                                  hintStyle: TextStyle(
                                      fontSize: 15.2,
                                      color: Color(0xFFBDBDBD)
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),
                              keyboardType: TextInputType.number,
                              validator: (value) => homeController.validator(value),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 8.0),
                        child: Container(
                          width: 165,
                          child: Center(
                            child: TextFormField(
                              controller: _dddDestinoController,
                              decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'DDD de destino',
                                  hintText: "Ex: 016",
                                  hintStyle: TextStyle(
                                      fontSize: 15.2,
                                      color: Color(0xFFBDBDBD)
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              ),
                              keyboardType: TextInputType.number,
                              validator: (value) => homeController.validator(value),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0, left: 8.0, right: 8.0),
                    child: Center(
                      child: TextFormField(
                        controller: _timeController,
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Duração da ligação (minutos)',
                            hintText: "Ex: 35",
                            hintStyle: TextStyle(
                                fontSize: 15.2,
                                color: Color(0xFFBDBDBD)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "Digite o tempo da ligação";
                          }
                          if(value.contains(".")){
                            return "Digite um tempo válido e inteiro";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Visibility(
                    visible: homeController.isVisible,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 4.0, right: 4.0),
                            child: Container(
                              //color: Colors.red,
                              height: 85,
                              width: 170,
                              child: Card(
                                color: Color(0xFFE6E9F2),
                                elevation: 2.0,
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text("Com plano",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text("R\$ ${homeController.valueWithPlan}0",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 4.0, right: 8.0),
                            child: Container(
                              //color: Colors.red,
                              height: 85,
                              width: 170,
                              child: Card(
                                color: Color(0xFFE6E9F2),
                                elevation: 2.0,
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Text("Sem plano",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text("R\$ ${homeController.valueWithoutPlan}0",
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                    child: Center(
                      child: SizedBox(
                        height: 45,
                        width: 150,
                        child: TextButton(
                          child: Text("Calcular",
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
                              backgroundColor: azulEscuro,
                          ),
                          onPressed: (){
                            //_formKey.currentState.validate();
                            if(_formKey.currentState.validate()){
                              var time = int.parse(_timeController.text);

                              setState(() {
                                homeController.valueWithPlan = homeController.calculateValueCall(homeController.plano, _dddOrigemController.text, _dddDestinoController.text, time);
                                homeController.valueWithoutPlan = homeController.calculateValueCall("semFaleMais", _dddOrigemController.text, _dddDestinoController.text, time);
                                homeController.isVisible = true;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
