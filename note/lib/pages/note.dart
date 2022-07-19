import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:note/pages/trash.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:share_plus/share_plus.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined),
            label: 'Todo list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Memories',
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TrashPage()),
              );
            },
            icon: const Icon(Icons.delete),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.amber,
              height: 100,
            ),
          ),
          IconButton(
            onPressed: () {
              // _showDialog(context);
              Alert(
                  context: context,
                  // title: "LOGIN",
                  content: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Icon(Icons.account_circle),
                          Column(
                            children: [
                              Text(
                                'aziz shrafi',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'aziz@shrafi.com',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          DialogButton(
                            child: Text(
                              "2 \n Todo unfinished",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          DialogButton(
                            child: Text(
                              "1 \n Memory",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            width: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Delete account",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Color.fromARGB(255, 179, 0, 0),
                    ),
                    DialogButton(
                      child: Text(
                        "Switch account",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      onPressed: () => Navigator.pop(context),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(116, 116, 191, 1.0),
                        Color.fromRGBO(52, 138, 199, 1.0)
                      ]),
                    )
                  ]).show();
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text('memory'),
          subtitle: Text('note'),
          trailing: IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share('memory \n note');
            },
          ),
        );
      },
    );
  }
}
/*
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Alert!!"),
        content: new Text("You are awesome!"),
        actions: <Widget>[
          new FlatButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}*/
