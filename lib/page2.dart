import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:infoapp/main.dart';
import 'dart:math';
import 'package:infoapp/ViewCardImg.dart';
import 'package:infoapp/RatingUI.dart';




class MyPage2 extends StatefulWidget {
  dynamic data;
  MyPage2({super.key, required this.data});


  @override
  _MyPage2 createState() => _MyPage2(data: data);

}

class _MyPage2 extends State<MyPage2> {
  String hintText = '';
  dynamic data;

  _MyPage2({required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    AppBar(
                      title: Text('Page'),
                      backgroundColor: Colors.blueGrey,
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          runApp(MyApp(name: data));
                        },
                      ),
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Name of Gundam',
                          hintText: hintText = data,
                        ),
                        onChanged: (val) {
                          hintText = val;
                          data = hintText;
                        },
                      ),
                    ),
                    SingleChildScrollView (
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ViewDetails(dataPage2: data,nameImg: 'V', rate: 5)));
                          },
                          child: CardImg(path: 'V', rate: 5,)
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ViewDetails(dataPage2: data,nameImg: '2', rate: 3.5,)));
                              },
                              child: CardImg(path: '2', rate: 3.5,)
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ViewDetails(dataPage2: data,nameImg: '3', rate: 4)));
                              },
                              child: CardImg(path: '3', rate: 4,)
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ViewDetails(dataPage2: data,nameImg: '1', rate: 4.2)));
                              },
                              child: CardImg(path: '1', rate: 4.2,)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class LoadingScreen extends StatefulWidget {
  dynamic data;
  LoadingScreen({required this.data});
  
  @override
  _LoadingScreenState createState() => _LoadingScreenState(data: data);
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoading = true;
  dynamic data;
  _LoadingScreenState({required this.data});

  @override
  void initState() {
    super.initState();
    // Giả lập thời gian loading
    Future.delayed(Duration(seconds: Random().nextInt(3)), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: isLoading
                ? CircularProgressIndicator()  // Hiển thị CircularProgressIndicator khi đang loading
                : MyPage2(data: data),  // Hiển thị nội dung sau khi loading hoàn thành
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardImg extends StatelessWidget {
  late String path;
  late double rate;
  CardImg({required this.path, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          )
        ),
        width: 170,
        height: 120,
        child: Column(
          children: [
            Container(
              width: 165,
              height: 105,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/$path.jpg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 80),
              child: StarRating(rating: rate,),
            ),
          ],
        )
      ),

    );
  }
  
}

