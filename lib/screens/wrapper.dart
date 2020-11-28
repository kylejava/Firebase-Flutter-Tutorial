import 'package:newfirebasetut/models/user.dart';
import 'package:newfirebasetut/screens/authenticate/authenticate.dart';
import 'package:newfirebasetut/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:newfirebasetut/models/user.dart';
import 'package:provider/provider.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<newUser>(context);

    if (user == null){
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}
