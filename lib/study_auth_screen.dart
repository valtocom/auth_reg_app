import 'package:flutter/material.dart';

class StudyAuthScreen extends StatelessWidget {
  const StudyAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36),),
        borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 2)
    );

    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100,),
                const SizedBox(width: 110, height: 84,
                  child: Image(image: AssetImage('assets/dart-logo.png')),),
                const SizedBox(height: 20,),
                const Text('Введите логин в виде 10 цифр номера телефона',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.6),),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Телефон',
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'Пароль',
                  ),
                ),
                const SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),
                const SizedBox(height: 62,),
                InkWell(
                  child: const Text('Регистрация',
                    style: linkTextStyle,
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 20,),
                InkWell(
                  child: const Text('Забыли пароль?',
                    style: linkTextStyle,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
