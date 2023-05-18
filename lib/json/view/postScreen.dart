import 'package:flutter/material.dart';
import 'package:json/json/provider/postShar.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostShar? providerF;
  PostShar? providerT;
  @override
  void initState() {

    super.initState();
    Provider.of<PostShar>(context,listen: false).Postjosn();
  }
  Widget build(BuildContext context) {
    providerF=Provider.of<PostShar>(context,listen: false);
    providerT=Provider.of<PostShar>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0x6b6127d5),
      body: Column(
        children: [
          // Expanded(child: ListView.builder(itemBuilder: (context, index) {
          //   return ListTile(
          //     title: Text("${providerF!.postJsonList[index]["id"]}"),
          //   );
          // },itemCount: providerT!.postJsonList.length)),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {

            return postShow(

              id: providerT!.postJsonList[index]["id"],
              userId: providerT!.postJsonList[index]["userId"],
              title: providerT!.postJsonList[index]["title"],
              body: providerT!.postJsonList[index]["body"],
            );

          },itemCount: providerT!.postJsonList.length,)),
           ElevatedButton(onPressed: () {

           }, child: Text("Json show"))
          
        ],
      ),
    ),);
  }
  Widget postShow({int? id,int? userId,String? title,String? body})
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("userId =$userId"),   Text("id =$id")
              ],
            ),
            Center(child: Text("title=$title",style: TextStyle(fontWeight: FontWeight.w600),)),
            Text("body=$body",style: TextStyle(fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
