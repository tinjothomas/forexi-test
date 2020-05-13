import 'package:flutter/material.dart';
import 'package:forexi/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatefulWidget {
  @override
  _TutorialHomeState createState() => _TutorialHomeState();
}

class _TutorialHomeState extends State<TutorialHome> {
  //

  //
  int count = 1;
  final String dogUrl = 'https://www.svgrepo.com/show/2046/dog.svg';
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      backgroundColor: kBodyColor,
      body: Center(
          child: ListView(
        children: <Widget>[
          SizedBox(height: 40),
          LimitedBox(
            maxWidth: 150,
            maxHeight: 150,
            child: SvgPicture.network(
              dogUrl,
              semanticsLabel: 'Feed button',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                decoration: BoxDecoration(
                    color: kBodyColor,
                    borderRadius: BorderRadius.circular(6.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Teddy for sale',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Use GridView to lay widgets out as a two-dimensional list. GridView provides two pre-fabricated lists, or you can build your own custom grid. When a GridView detects that its contents are',
                      style: TextStyle(color: kTextLight, fontSize: 14),
                    )
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                  textColor: Colors.white,
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.lightBlue.shade50),
                  onPressed: () => {
                        setState(() {
                          count = count - 1;
                        })
                      },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  width: 60,
                  child: Center(
                      child: Text(
                    '$count',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
              OutlineButton(
                  textColor: Colors.white,
                  borderSide:
                      BorderSide(width: 2.0, color: Colors.lightBlue.shade50),
                  onPressed: () => {
                        setState(() {
                          count = count + 1;
                        })
                      },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: kActiveColor,
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child:
                    const Text('Add to Cart', style: TextStyle(fontSize: 16)),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
