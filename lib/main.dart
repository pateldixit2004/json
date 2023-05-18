import 'dart:js';

import 'package:flutter/material.dart';
import 'package:json/json/provider/postShar.dart';
import 'package:json/json/view/postScreen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostShar(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>PostScreen(),
        },
      ),
    )
  );
}