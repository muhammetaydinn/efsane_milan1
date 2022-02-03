import 'package:efsane_milan/modeller/takim.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class TakimDetay extends StatefulWidget {
  final Takim secilenTakim;
  const TakimDetay({required Takim this.secilenTakim, Key? key})
      : super(key: key);

  @override
  State<TakimDetay> createState() => _TakimDetayState();
}

class _TakimDetayState extends State<TakimDetay> {
  Color appBarRenk=Colors.red;
  late PaletteGenerator _generator;
   
  @override
  void initState() {
    super.initState();
    appBarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appBarRenk,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(widget.secilenTakim.buyukResim),
            centerTitle: true,
            title: Text(widget.secilenTakim.oyuncuAdi),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(25),
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenTakim.oyuncuDetayi,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void appBarRenginiBul() async{
    _generator = await PaletteGenerator.fromImageProvider(AssetImage(widget.secilenTakim.buyukResim));
    appBarRenk=_generator.dominantColor!.color;
    setState(() {
      
    });//icinde degisikler olan methodlara koyarsın degisenler builde gidip guncellenir 
    print(appBarRenk);
  }
}
