import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PostShar extends ChangeNotifier
{
  List postJsonList=[];

  Future<void> Postjosn()
  async {


    String  JsonString=await rootBundle.loadString("assets/json/post.json");
    postJsonList =jsonDecode(JsonString);
    notifyListeners();
    print(json);

  }

}