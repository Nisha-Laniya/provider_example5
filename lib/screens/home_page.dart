import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  ValueNotifier<int> counter = ValueNotifier<int>(0);
  ValueNotifier<bool> password = ValueNotifier<bool>(false);
  ValueNotifier<ThemeMode> toggle = ValueNotifier<ThemeMode>(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         ValueListenableBuilder(
             valueListenable: password,
             builder: (context,value,child) {
               return  Padding(
                 padding: const EdgeInsets.all(18),
                 child: TextFormField(
                   obscureText: password.value,
                   decoration: InputDecoration(
                     hintText: 'Password',
                     suffixIcon: InkWell(
                         onTap: () {
                           password.value = !password.value;
                           print(password.value);
                         },
                         child: Icon(password.value ? Icons.visibility_off_outlined : Icons.visibility)),
                   ),

                 ),
               );
             }
         ),
          Center(
           child: ValueListenableBuilder(
             valueListenable: counter,
             builder: (context, value, child) {
               return Text(counter.value.toString(), style: TextStyle(fontSize: 50),);
           }
           ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
          print(counter.value);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
