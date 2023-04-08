import 'dart:ui';

import 'package:flutter/material.dart';

import '../styles.dart';

class ProgressDialy extends StatelessWidget {

   final bool show;
   final Map <String,double> progress;
   final List<Color> progressColors;
  ProgressDialy({required this.show,required this.progress,required this.progressColors});
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Progress by category',
              style: bigText,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),

            height: 110,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              itemCount: progress.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,i){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    show==true ? Text('true') /*CircularPercentIndicator(
                      animateFromLastPercent: true,
                      curve: Curves.fastOutSlowIn,
                      animationDuration: 1500,
                      radius: 100.0,
                      lineWidth: 10.0,
                      animation: true,
                      percent:  progress.values.toList()[i],
                      center: new Text(
                        progress.keys.toList()[i],
                        style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: progressColors[i],
                      backgroundColor: glassyColor,
                    )*/:Text('false'),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
                          child: Container(

                            width: 200,
                            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: glassyColor,),

                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,


                              children: <Widget>[
                                Text('Flutter UI',style: bigText.copyWith(fontSize: 16),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6),
                                  child: Text('4 of 5 sections completed 8 hours spent so far',style:description.copyWith(fontSize: 12),),
                                ),



                              ],)


                            ,),
                        ),
                      ),
                    )
                  ],
                );
              },


            ),
          ),
        ],
      );
  }
}
