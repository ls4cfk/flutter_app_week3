import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String animalPhoto = "https://thumbs.dreamstime.com/z/large-group-african-safari-animals-wildlife-conservation-concept-174172993.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Animals"),
        ),
        body: Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                width: MediaQuery.of(context).size.width * 0.80,
                margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.10),
                child: Image.network(animalPhoto),
              ),
            ],
          ),
          Row(//ROW 2
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                  ),
                  width: 150,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.10, top: MediaQuery.of(context).size.width * 0.10),
                  child: TextButton(
                    child: Text('Dog', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        animalPhoto = "https://cdn.cnn.com/cnnnext/dam/assets/201030094143-stock-rhodesian-ridgeback-super-tease.jpg";
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                  ),
                  width: 150,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.20, top: MediaQuery.of(context).size.width * 0.10),
                  child: TextButton(
                    child: Text('Cat', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        animalPhoto = "https://static.independent.co.uk/2021/06/16/08/newFile-4.jpg?width=982&height=726&auto=webp&quality=75";
                      });
                    },
                  ),
                )
              ]),
          Row(// ROW 3
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blue
                  ),
                  width: 150,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.10, top: MediaQuery.of(context).size.width * 0.10),
                  child: TextButton(
                    child: Text('Mouse', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        animalPhoto = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Apodemus_sylvaticus_bosmuis.jpg/1200px-Apodemus_sylvaticus_bosmuis.jpg";
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue
                  ),
                  width: 150,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.20, top: MediaQuery.of(context).size.width * 0.10),

                  child: TextButton(
                    child: Text('Pinguin', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        animalPhoto = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/00_2103_Pinguin_-_Petermann_Island_%28Antarktische_Halbinsel%29.jpg/800px-00_2103_Pinguin_-_Petermann_Island_%28Antarktische_Halbinsel%29.jpg";
                      });
                    },
                  ),
                ),
              ]),
        ]));
  }
}