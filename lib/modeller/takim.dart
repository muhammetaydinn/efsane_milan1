import 'package:flutter/material.dart';
class Takim{
  final String _oyuncuAdi;
  final String _oyuncuYasi;
  final String _oyuncuDetayi;
  final String _kucukResim;
  final String _buyukResim;
  final String _videolar;

  get oyuncuAdi => this._oyuncuAdi;
  get oyuncuYasi => this._oyuncuYasi;
  get oyuncuDetayi => this._oyuncuDetayi;
  get kucukResim => this._kucukResim;
  get buyukResim => this._buyukResim;
  get videolar => this._videolar;
  Takim(this._oyuncuAdi,this._oyuncuYasi,this._oyuncuDetayi,this._kucukResim,this._buyukResim,this._videolar);

}