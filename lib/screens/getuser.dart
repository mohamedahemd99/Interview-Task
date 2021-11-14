import 'package:flutter/material.dart';

class GetUserScreen extends StatelessWidget {
  String  name;
  GetUserScreen(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: null,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome  ",style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),),
            Text(name),

          ],
        ) ,
        centerTitle: true,
      ),
    );
  }
}
