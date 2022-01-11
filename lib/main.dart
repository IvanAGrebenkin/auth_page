import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: 
        SizedBox(
          child: Container (
            width: double.infinity,
            child: Column(children: [
            const SizedBox(width:103, height:81,),
            const SizedBox(width:103, height:79.42,
                child: Placeholder(),
            ),
            const SizedBox(width:103, height:18.58,),
            const Text('Введите логин в виде 10 цифр номера телефона'),
            const SizedBox(width:103, height:20,),
            const SizedBox(width:244,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffECEFF1),
                  labelText: 'Телефон',),
              ),
            ),
            const SizedBox(width:103, height:20,),
            const SizedBox(width:244,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffECEFF1),
                  labelText: 'Пароль',
                ),
              ),
            ),
            const SizedBox(width:103, height:28,),
            SizedBox(width:154, height:42,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Войти'),
              ),
            ),
            const SizedBox(width:103, height:55,),
            SizedBox(width:94, height:16,
              child: InkWell(
                child: const Text('Регистрация'),
                onTap: () {},
              ),
            ),
            const SizedBox(width:103, height:19,),
            SizedBox(width:122, height:16,
              child: InkWell(
                child: const Text('Забыли пароль?'),
                onTap: () {},
              ),
            ),
            ],),
          ),
        ),
      ),
    );
  }
}

