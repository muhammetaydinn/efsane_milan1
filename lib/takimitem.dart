import 'package:efsane_milan/modeller/takim.dart';
import 'package:efsane_milan/takim_detay.dart';
import 'package:flutter/material.dart';

class TakimItem extends StatelessWidget {
  final Takim listelenenOyuncu;
  const TakimItem({required this.listelenenOyuncu ,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(right: 10,left: 10,top: 4,bottom: 4), 

          child: ListTile(
            onTap:(){
              
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TakimDetay(secilenTakim: listelenenOyuncu,),),);
            } ,
            leading: Image.asset(listelenenOyuncu.kucukResim,width: 64,height: 64,),
            title: Text(listelenenOyuncu.oyuncuAdi,style: myTextStyle.headline5,),
            subtitle: Text(listelenenOyuncu.oyuncuYasi,style: myTextStyle.subtitle2),
            trailing: Icon(Icons.arrow_forward,color:Colors.black),


          ),

      
    );
  }
}