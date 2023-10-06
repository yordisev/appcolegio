import 'package:appcolegio/constantes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = 'ProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mi Profile'),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(Icons.help_outline_outlined),
                  SizedBox(width: kDefaultPadding / 2),
                  Text('Ayuda', style: TextStyle(fontWeight: FontWeight.w300))
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const CircleAvatar(
                  minRadius: 50,
                  maxRadius: 50,
                  backgroundColor: kSecondaryColor,
                  backgroundImage:
                      AssetImage('assets/images/student_profile.jpeg'),
                ),
                const SizedBox(width: kDefaultPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Yordis Escorcia',
                      style: GoogleFonts.averiaSerifLibre(
                          color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Clase X-II A | Roll no: 12',
                      style: GoogleFonts.averiaSerifLibre(
                          color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DatosPrimero(
                    titulo: 'Registra Numero', valor: '2022-ASDF-2023'),
                DatosPrimero(titulo: 'Año de Academia', valor: '2023'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DatosPrimero(titulo: 'Admisiones Clases', valor: 'X-II'),
                DatosPrimero(titulo: 'Admisiones Numero', valor: '0000123'),
              ],
            ),
            DatosSecundarios(titulo: 'Correo', valor: 'yordis@redes.com'),
            DatosSecundarios(titulo: 'Nombre', valor: 'yordis Escorcia'),
            DatosSecundarios(titulo: 'Celular', valor: '3012563232'),
          ],
        ),
      ),
    );
  }
}

class DatosSecundarios extends StatelessWidget {
  final String titulo;
  final String valor;

  const DatosSecundarios({
    super.key,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(titulo,
                  style: TextStyle(color: kTextLightColor, fontSize: 15)),
              SizedBox(height: kDefaultPadding / 2),
              Text(valor,
                  style: TextStyle(
                      color: kTextBlackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: kDefaultPadding / 2),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 2.0,
                ),
              )
            ],
          ),
          Icon(Icons.lock_outline_rounded, size: 20)
        ],
      ),
    );
  }
}

class DatosPrimero extends StatelessWidget {
  final String titulo;
  final String valor;

  const DatosPrimero({
    super.key,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: kDefaultPadding / 4,
          left: kDefaultPadding / 4,
          top: kDefaultPadding / 2),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              titulo,
              style: TextStyle(
                  color: kTextLightColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(height: 5),
            Text(
              valor,
              style: TextStyle(
                  color: kTextBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            SizedBox(height: kDefaultPadding / 2),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Divider(
                thickness: 1.0,
              ),
            )
          ]),
          Icon(Icons.lock_outline_rounded, size: 20)
        ],
      ),
    );
  }
}
