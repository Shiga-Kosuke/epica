import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('flutter',
            ),
          ),
          body: Consumer<MainModel>(
            builder: (context,model, child) {
              return Center(
                child:Column(
    children:[
                Text(
                    model.shigaText,
                    style:TextStyle(
                  fontSize:30,
                )
                ),
                RaisedButton(
                  child:Text(
                    'ボタン',),
                  onPressed:(){
                    model.changeShigaText();
                  },
                )
                  ]
              ),
        );
            }
          ),
        ),
      ),
      );
}
}
