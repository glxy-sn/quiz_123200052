import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/modul/game_store.dart';
import 'package:quiz/modul/halaman_detail.dart';


class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Tiara Game'),
          ),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              itemCount: gameList.length,
            itemBuilder: (context,index){
              final GameStore game = gameList[index];
              return ListTile(onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> HalamanDetail(game:game)
                    )
                );
              },
                leading: Image.network(game.imageUrls[0],width: 300,fit: BoxFit.cover,),
                title: Text(game.name),
                subtitle: Text(game.price),
              );
            },
          ),
        ),
    );
  }
}
