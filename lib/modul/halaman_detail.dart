import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz/modul/game_store.dart';

class HalamanDetail extends StatefulWidget {
  final GameStore game;
  const HalamanDetail({Key? key, required this.game}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.game.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3, itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.game.imageUrls[index]),
                );
              },
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
                child: Text(widget.game.name, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(widget.game.tags[0]),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(widget.game.about),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.favorite),
                    //BackgroundFetchClickEvent(backgroundColor: (isFav) ? Colors.green : Colors.red),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.date_range),
                    Text(widget.game.releaseDate),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.date_range),
                    Text(widget.game.reviewAverage),
                    Text('of'),
                    Text(widget.game.reviewCount),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
