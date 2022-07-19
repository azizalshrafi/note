import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TrashPage extends StatelessWidget {
  const TrashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trash',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              Alert(
                  context: context,
                  //title: "Confirm prompt",
                  content: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            'Confirm prompt',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                      Text(
                        'Empty trash will delete notes in trash and cant undo',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter current users emmail to confirm',
                        ),
                      ),
                    ],
                  ),
                  buttons: [
                    DialogButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Ok",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      color: Colors.red,
                    ),
                    DialogButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      color: Colors.white,
                    ),
                  ]).show();
            },
          ),
        ],
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text('memory'),
          subtitle: Text('note'),
          trailing: IconButton(
            icon: Icon(Icons.check_box),
            onPressed: () {},
          ),
        );
      },
    );
  }
}
