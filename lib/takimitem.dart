// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'package:efsane_milan/modeller/takim.dart';
import 'package:efsane_milan/takim_detay.dart';
import 'package:efsane_milan/takimlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class TakimItem extends StatelessWidget {
  final Takim listelenenOyuncu;
  static final int now = DateTime.now().year;
 TakimItem({required this.listelenenOyuncu ,Key? key }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(right: 10,left: 10,top: 4,bottom: 4), 

          child: Column(
            children: [
              ListTile(
                onTap:(){
                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TakimDetay(secilenTakim: listelenenOyuncu,),),);
                } ,
                
                leading: Image.asset(listelenenOyuncu.kucukResim,width: 64,height: 64,),
                title: Text(listelenenOyuncu.oyuncuAdi,style: myTextStyle.headline6,),
                
                subtitle: Text((now-int.parse(listelenenOyuncu.oyuncuYasi)).toString()+" yaşında",style: myTextStyle.subtitle2),
                trailing: Icon(Icons.arrow_forward,color:Colors.black),
              ),
            ],
          ),

      
    );
  }
}