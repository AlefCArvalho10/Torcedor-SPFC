import 'package:flutter/material.dart';


class Splashscreen extends StatefulWidget{
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyWidegetState();
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4))
    .then((_) => {Navigator.popAndPushNamed(context, '/hawaccess')}
    
  }
}

class _MyWidegetState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Center(
        child: Image.asset('lib/assets/logoApp.png'),
      ),
    );
  } 
}