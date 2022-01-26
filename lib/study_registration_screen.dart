import 'dart:ffi';

import 'package:flutter/material.dart';

class StudyRegistrationScreen extends StatelessWidget {
  const StudyRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36),),
        borderSide: BorderSide(color: Color(0xFFbbbbbb), width: 2)
    );

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: const [
                    Icon(Icons.account_circle, color: Color(0xFF5C5C5C)),
                    SizedBox(width: 10,),
                    Text('Регистрация',
                      style: TextStyle(fontSize: 20,
                        color: Color(0xFF5C5C5C)),
                    ),
                  ],
                ),

                const SizedBox(height: 15,),
                const Divider(color: Color(0xFFC4C4C4)),

                const SizedBox(height: 7,),
                const Text('Чтобы зарегистрироваться введите свой номер телефона и почту',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,
                    color: Color(0xFFC4C4C4)),
                ),

                const SizedBox(height: 15,),
                const Center(
                  child: Text('Телефон',
                    style: TextStyle(fontSize: 16,
                      color: Color.fromRGBO(0, 0, 0, 0.6),),
                  ),
                ),

                const SizedBox(height: 6,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: '+7',
                  ),
                ),

                const SizedBox(height: 15,),
                const Text('Почта',
                  style: TextStyle(fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 0.6),),
                ),

                const SizedBox(height: 6,),
                const TextField(
                  decoration: InputDecoration(
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'e-mail',
                  ),
                ),

                const SizedBox(height: 25,),
                const Text('Вам придет четырехзначный код, который будет вашим паролем',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,
                    color: Color(0xFFC4C4C4)),
                ),

                const SizedBox(height: 15,),
                const Text('Изменить пароль можно будет в личном кабинете после регистрации',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,
                    color: Color(0xFFC4C4C4)),
                ),

                const SizedBox(height: 32,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {},
                  child: Text('Отправить код'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
