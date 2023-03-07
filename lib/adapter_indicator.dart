import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AdapterIndicator extends StatelessWidget {
String os;
AdapterIndicator({required this.os});
  @override
  Widget build(BuildContext context) {

  if(os=='android')
    return CircularProgressIndicator();

    return const CupertinoActivityIndicator();
  }
}
