import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano_ui/models.dart';

class PianoScreen extends StatelessWidget {
  List<BigContainerModel> big =[
    BigContainerModel(
  color:Colors.deepPurple, num:'1', char:'C' , tone:'c'),
    BigContainerModel(
        color:Colors.indigoAccent, num:'2', char:'D' , tone:'RE'),
    BigContainerModel(
        color:Colors.blue, num:'3', char:'E' , tone:'MI'),
    BigContainerModel(
        color:Colors.green, num:'4', char:'F' , tone:'FA'),
    BigContainerModel(
        color:Colors.lightGreen, num:'5', char:'G' , tone:'SOL'),
    BigContainerModel(
        color:Colors.lime, num:'6', char:'A' , tone:'LA'),
    BigContainerModel(
        color:Colors.orangeAccent, num:'7', char:'B' , tone:'SI'),
    BigContainerModel(
        color:Colors.deepOrangeAccent, num:'8', char:'C' , tone:'DO'),
    BigContainerModel(
        color:Colors.brown, num:'9', char:'D' , tone:'RE'),
    BigContainerModel(
        color:Colors.pink, num:'10', char:'E' , tone:'MI'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          overflow: Overflow.clip,
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                left: 50,bottom:20 ,top: 20,right: 20,

              ),
              scrollDirection:Axis.horizontal ,
              itemBuilder:(context ,index)=> buildBigContainer(big[index]) ,
              separatorBuilder: (context ,index) => SizedBox(width: 5,),
              itemCount: big.length,
            ),
            Positioned(
              left:90 ,
                top: 15,
                child: buildSmallContainer(Colors.deepPurple.shade700,'c#' , '1#','D0#' ),
            ),
            Positioned(
              left:160 ,
              top: 15,
              child: buildSmallContainer(Colors.blue.shade900,'D#' , '2#','RE#' ),
            ),
            Positioned(
              left:295 ,
              top: 15,
              child: buildSmallContainer(Colors.green.shade900,'F#' , '4','FA#' ),
            ),
            Positioned(
              left:355 ,
              top: 15,
              child: buildSmallContainer(Colors.lightGreen.shade700,'G#' , '5#','SO#' ),
            ),
            Positioned(
              left:420 ,
              top: 15,
              child: buildSmallContainer(Colors.lime.shade900,'A#' , '6#','LA#' ),
            ),
            Positioned(
              left:550 ,
              top: 15,
              child: buildSmallContainer(Colors.brown.shade400,'C#' , '8#','DO#' ),
            ),
            Positioned(
              left:620 ,
              top: 15,
              child: buildSmallContainer(Colors.red.shade900,'D#' , '9#','RE#' ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildBigContainer(BigContainerModel model) => Container(
  width:60 ,
  height:400 ,
  decoration: BoxDecoration(
    color: model.color ,
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        model.char,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        model.tone,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        model.num,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      SizedBox(
        height: 15.0,
      ),

    ],
  ),
);
Widget buildSmallContainer(
    Color color , String char , String num , String tone ,
    )=>Container(
       width:35 ,
        height: 170,
       decoration: BoxDecoration(
      color:color ,
      borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
    ),
    border: Border.all(
      color: Colors.white,
      width: 2,
    ),
  ),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
      Text(
        char,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        tone,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        num,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
    ],
  ),
);
    