import 'package:flutter/material.dart';

import '../data/character.dart';

var activated = [false, false, false];

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var generateCharacters =
        getCharacters().map((user) => CharacterView(user)).toList();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Container(
            height: 50,
            color: Color(0xFF000000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'MACHINE UNLOCKED',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 30,
              runSpacing: 40,
              children: generateCharacters,
            ),
          ),
        ],
      ),
    );
  }
}

class CharacterView extends StatefulWidget {
  Character c;
  CharacterView(this.c);
  @override
  State<StatefulWidget> createState() => CharacterState(c);
}

class CharacterState extends State<CharacterView> {
  final Character character;

  CharacterState(this.character);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showDialog(
            context: context,
            builder: (BuildContext context) =>
                _passwordDialog(context, character));
        setState(() {});
      },
      child: Card(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 300,
                child: Stack(children: [
                  Image.asset(
                    'assets/${character.image}',
                    fit: BoxFit.fill,
                  )
                ]),
              ),
              Expanded(
                child: Container(
                    color: Theme.of(context).backgroundColor,
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          character.name,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              character.activated
                                  ? "Lethargy off"
                                  : "Lethargy activated",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _passwordDialog(BuildContext context, Character character) {
  TextEditingController _editingController = TextEditingController();

  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    insetPadding: EdgeInsets.all(1),
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.all(30),
    content: Container(
      //width: MediaQuery.of(context).size.width * 0.50,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Warning",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _editingController,
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {
                    if (_editingController.text == character.code.toString()) {
                      Navigator.of(context).pop();
                      character.activated = true;
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 28),
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                    elevation: 20,
                  ),
                  child: Text(
                    "UNLOCK",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          )),
    ),
  );
}
