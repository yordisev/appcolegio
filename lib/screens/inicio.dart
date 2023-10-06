import 'package:appcolegio/config/menu.dart';
import 'package:appcolegio/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InicioScreen extends StatelessWidget {
  static String routeName = 'InicioScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hola',
                            style: GoogleFonts.averiaSerifLibre(
                                color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            'Yordis Escorcia',
                            style: GoogleFonts.archivoNarrow(
                                color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        'Clase X-II A | Roll no: 12',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                            color: kOtherColor,
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding)),
                        child: Center(
                          child: Text(
                            '2022 - 2023',
                            style: TextStyle(
                                fontSize: 12,
                                color: kTextBlackColor,
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 6),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      minRadius: 50,
                      maxRadius: 50,
                      backgroundColor: kSecondaryColor,
                      backgroundImage:
                          AssetImage('assets/images/student_profile.jpeg'),
                    ),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: BoxDecoration(
                          color: kOtherColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Documentos',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: kTextBlackColor),
                            ),
                            SizedBox(height: kDefaultPadding),
                            Text(
                              '90.02%',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  color: kTextBlackColor),
                            ),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: BoxDecoration(
                          color: kOtherColor,
                          borderRadius: BorderRadius.circular(kDefaultPadding)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Total Pagos',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: kTextBlackColor),
                            ),
                            SizedBox(height: kDefaultPadding),
                            Text(
                              '600\$',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w300,
                                  color: kTextBlackColor),
                            ),
                          ]),
                    ),
                  )
                ],
              )
            ]),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: CustomScrollView(
                    slivers: [MenuInicio()],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
