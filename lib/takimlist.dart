import 'package:efsane_milan/data.dart';
import 'package:efsane_milan/modeller/takim.dart';
import 'package:efsane_milan/takimitem.dart';
import 'package:flutter/material.dart';


class TakimList extends StatelessWidget {
  late List<Takim> tumOyuncular;
   TakimList(){
     tumOyuncular=veriKaynaginiHazirla();
     print(tumOyuncular);
}

   

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.red[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("MİLAN KADROSU",style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
      ),
      body:Center(
        child: ListView.builder(
          itemBuilder:(context, index) {
          return TakimItem(listelenenOyuncu: tumOyuncular[index]);
          
        },
        itemCount: tumOyuncular.length,
      ),
        ),
    
    );
  }

  List<Takim> veriKaynaginiHazirla() {
    List<Takim> gecici=[];
    for(int i=0;i<11;i++){
        var oyuncuAdlari=Strings.OYUNCU_ISIMLERI[i];
        var oyuncualt=Strings.OYUNCU_ALTBILGI[i];
        var oyuncuhayat=Strings.OYUNCU_HAYATI[i];
        var kucukresim=Strings.OYUNCU_KUCUK[i];
        var buyukresim=Strings.OYUNCU_BUYUK[i];

        Takim eklenecekTakim = Takim(oyuncuAdlari,oyuncualt,oyuncuhayat,kucukresim,buyukresim);
        gecici.add(eklenecekTakim);
    }
    return gecici;
  }
}