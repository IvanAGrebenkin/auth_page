import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const inputFileBorderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36.0)),
      borderSide: BorderSide(
        color: Color(0xffECEFF1),
        width: 2.0,
      ),
    );

    const linkTextStyle = TextStyle(
      fontSize:16,
      fontWeight: FontWeight.bold,
      color: Color(0xff0079D0),
    );

    return MaterialApp(
      home: Scaffold(
        body: Container (
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/wallpaper1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50),
          width: double.infinity,
          child: Column(children: [
          const SizedBox(width:103, height:81,),
          const SizedBox(width:103, height:79.42,
              child: Image(
                  image: AssetImage('assets/dart-logo 1.png'),
              ),
          ),
          const SizedBox(width:103, height:18.58,),
          const Text('Введите логин в виде 10 цифр номера телефона',
              style: TextStyle(
                  fontSize:16,
                  color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
          ),
          const SizedBox(width:103, height:20,),
          const TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              enabledBorder: inputFileBorderStyle,
              focusedBorder: inputFileBorderStyle,
              filled: true,
              fillColor: Color(0xffECEFF1),
              labelText: 'Телефон',),
          ),
          const SizedBox(width:103, height:20,),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: inputFileBorderStyle,
              focusedBorder: inputFileBorderStyle,
              filled: true,
              fillColor: Color(0xffECEFF1),
              labelText: 'Пароль',
            ),
          ),
          const SizedBox(width:103, height:28,),
          SizedBox(width:154, height:42,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Войти'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff0079D0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(36.0)),
              ),

            ),
          ),
          const SizedBox(width:103, height:68,),
          InkWell(
            child: const Text(
              'Регистрация',
              style: linkTextStyle,
              ),
              onTap: () {},
          ),
          const SizedBox(width:103, height:19,),
          InkWell(
            child: const Text(
              'Забыли пароль?',
              style: linkTextStyle,
            ),
            onTap: () {},
          ),
          //const SizedBox(width:103, height:200,),
          ],),
        ),
      ),
    );
  }
}

