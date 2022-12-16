import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen  extends State<NewEventsScreen>{
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text("Add New Event"),
      ) ,
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.event),
              border: OutlineInputBorder(),
              hintText: 'Enter the event here',
            ),
            controller: _textEditingController,
          ),
          Builder(
            builder: (context) {
              return ElevatedButton(onPressed: () {
                String newEventText = _textEditingController.text;
                //print(newEventText);
                Navigator.of(context).pop(newEventText);

              },
                  child: Text("Add",style: TextStyle(backgroundColor: Colors.purple),));
            }
          ),
        ],
      ),

    );
  }


}