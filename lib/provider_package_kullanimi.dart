import 'package:flutter/material.dart';
import 'package:flutter_state/sayac.dart';
import 'package:provider/provider.dart';

class ProviderPackageKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mySayac = Provider.of<Sayac>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Kullanimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("ABC"),
            Text("${mySayac.sayac}",
            style: Theme.of(context).textTheme.display1,)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize:MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: "1",
            onPressed: (){mySayac.artir();},
            child: Icon(Icons.add),
          ),
          SizedBox(height: 5,),
          FloatingActionButton(
            heroTag: "2",
            onPressed: (){mySayac.azalt();},
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
