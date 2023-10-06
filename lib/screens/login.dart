import 'package:appcolegio/constantes.dart';
import 'package:appcolegio/screens/inicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: AssetImage('assets/images/splash.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Hi',
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 35,
                        color: kTextWhiteColor),
                  ),
                  SizedBox(width: 8),
                  Text('Estudiante',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
                SizedBox(height: kDefaultPadding / 2),
                Text('Registrate para Continuar',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ],
            ),
          ),
          _Formulario()
        ],
      ),
    );
  }
}

class _Formulario extends ConsumerWidget {
  const _Formulario({
    super.key,
  });
  final bool verpassword = true;
  @override
  Widget build(BuildContext context, ref) {
    // final formKey = GlobalKey<FormState>();
    // final usuario = TextEditingController();
    // final password = TextEditingController();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Form(
                  // key: formKey,
                  child: Column(
                children: [
                  const SizedBox(height: kDefaultPadding),
                  TextFormField(
                    // controller: usuario,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Correo Estudiantil',
                      labelText: 'Correo',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                      prefixIcon: Icon(Icons.mail, color: kPrimaryColor),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      RegExp regExp = new RegExp(emailPattern);
                      if (value == null || value.isEmpty) {
                        return 'Escriba un correo';
                      } else if (!regExp.hasMatch(value)) {
                        return 'Escriba un email Valido';
                      }
                    },
                  ),
                  SizedBox(height: kDefaultPadding),
                  TextFormField(
                    // controller: password,
                    obscureText: verpassword,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      labelText: 'Escribir Contraseña',
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: kPrimaryColor, width: 2),
                      ),
                      prefixIcon: const Icon(Icons.security_outlined,
                          color: kPrimaryColor),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          verpassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 28,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 5) {
                        return 'La contraseña debe ser minimo de 5 caracteres';
                      }
                    },
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                            colors: [kSecondaryColor, kPrimaryColor],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(0.5, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp)),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, InicioScreen.routeName);
                        // if(formKey.currentState!.validate()){
                        //   // ejecutar esto
                        // }
                      },
                      label: Text(
                        'Iniciar Sesion',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Reestablecer Contraseña',
                        style: TextStyle(
                            fontSize: 15,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
