import 'package:app_torcedortricolor/src/componentes/color_style.dart';
import 'package:app_torcedortricolor/src/componentes/my_text_from_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorStyle.Background,
      body:Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [ 
            const Text('Acesse' ,
            style: TextStyle(
              color: ColorStyle.Text,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),
            ),
            const Text('Com e-mail e senha' ,
            style: TextStyle(
              color: ColorStyle.Text,
              fontSize: 15,
              fontWeight: FontWeight.bold        
                   
        ),
        
      ) ,
      
      MyTextFormField(controller: TextEditingController.fromValue(value), 
      fillColor: ColorStyle.fild, 
      border: InputBorder.none, 
      hintText: 'Digite seu E-mail', 
      isPassword: false
      ),
      MyTextFormField(controller: TextEditingController.fromValue(value), 
      fillColor: ColorStyle.fild, 
      border: InputBorder.none, 
      hintText: 'Digite sua senha', 
      isPassword: true
      )

    ]

        )
      )
    );
  }
}