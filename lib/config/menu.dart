import 'package:appcolegio/constantes.dart';
import 'package:flutter/material.dart';

class ItemMenu {
  final String titulo;
  final IconData icono;
  final String ruta;

  ItemMenu(this.titulo, this.icono, this.ruta);
}

final menuItems = <ItemMenu>[
  ItemMenu('Giroscopio', Icons.download, 'giroscopio'),
  ItemMenu('Biometrico', Icons.fingerprint, 'biometrico'),
  ItemMenu('AdFullScreen', Icons.gpp_good_outlined, 'anuncios'),
  ItemMenu('Rewarded', Icons.forest_sharp, 'anuncios2'),
];

class MenuInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems
          .map((item) => InicioMenuItem(
              titulo: item.titulo, ruta: item.ruta, icono: item.icono))
          .toList(),
    );
  }
}

class InicioMenuItem extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final String ruta;
  final List<Color> bgcolors;
  const InicioMenuItem(
      {super.key,
      required this.titulo,
      required this.icono,
      required this.ruta,
      this.bgcolors = const [
        kSecondaryColor,
        kPrimaryColor
      ]}); //const [Colors.lightBlue, Colors.blue]

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, ruta),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: bgcolors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              color: Colors.white,
              size: 60,
            ),
            const SizedBox(height: 10),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
