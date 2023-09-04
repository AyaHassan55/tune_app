import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffA9A9A9), sound: 'note1.wav'),
    TuneModel(color: Color(0xffE9967A), sound: 'note2.wav'),
    TuneModel(color: Color(0xffD3D3D3), sound: 'note3.wav'),
    TuneModel(color: Color(0xffF08080), sound: 'note4.wav'),
    TuneModel(color: Color(0xffFFE4E1), sound: 'note5.wav'),
    TuneModel(color: Color(0xffD3D3D3), sound: 'note6.wav'),
    TuneModel(color: Color(0xffFFFACD), sound: 'note7.wav'),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xff253238),
        title: const Center(child: Text('Flutter Tunes')),
      ),
      body:  Column(
        children:tunes.map((e) => TuneItem(tune: e)).toList(),

      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //    List<TuneItem> items = [];
  //    for(var color in tuneColors){
  //      items.add(TuneItem(color: color));
  //    }
  //    return items;
  // }
}