// ignore_for_file: avoid_unnecessary_containers

import 'package:efsane_milan/modeller/takim.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class TakimDetay extends StatefulWidget {
  final Takim secilenTakim;
  const TakimDetay({required Takim this.secilenTakim, Key? key})
      : super(key: key);

  @override
  State<TakimDetay> createState() => _TakimDetayState();
}

class _TakimDetayState extends State<TakimDetay> {
  
  YoutubePlayerController _controller=YoutubePlayerController(initialVideoId: "zqwUIjjtuZs",flags: const YoutubePlayerFlags(autoPlay: true,mute: false));
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
          
          expandedHeight: 350,
          pinned: true,
          backgroundColor: appBarRenk,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(widget.secilenTakim.buyukResim),
            centerTitle: true,
            title: Text(widget.secilenTakim.oyuncuAdi,),
          ),
        ),
        SliverToBoxAdapter(
          
          child: Column(
            
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Text(
                    widget.secilenTakim.oyuncuDetayi,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: YoutubePlayer(controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,),
              ),

              Container(
                child: const Text("\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n."),
              )
            ],
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
