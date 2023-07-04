import 'package:flutter/material.dart';
import 'package:infoapp/page2.dart';
import 'package:infoapp/RatingUI.dart';


class ViewDetails extends StatefulWidget {
  dynamic dataPage2;
  dynamic nameImg;
  late double rate;

  ViewDetails({super.key, required this.dataPage2, required this.nameImg, required this.rate});

  @override
  _ViewDetails createState() => _ViewDetails(dataPage2: dataPage2, nameImg: nameImg, rate: rate);
}

class _ViewDetails extends State<ViewDetails> {
  dynamic dataPage2;
  dynamic nameImg;
  late double rate;
  _ViewDetails({required this.dataPage2,required this.nameImg, required this.rate});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              AppBar(
                backgroundColor: Colors.blueGrey,
                title: const Text('Details'),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyPage2(data: dataPage2)));
                  },
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      //borderRadius:  BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('images/$nameImg.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,10,240,0),
                    child: StarRating(rating: rate, size: 20,)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}