import 'package:eventmanager_app/_NewEventScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
 State<StatefulWidget> createState() => _MyApp();
  }


class _MyApp extends State<MyApp>{
  final List<Widget> _list=[
    Text("EVENTS")
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
    appBar: AppBar(title: Text('EVENT MANAGER'),),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((context,index)=> _list[index])),

        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async{
                //await Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewEventsScreen()));

                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewEventsScreen()));
               // print(newText);
              setState(() {
                _list.add(Text(newText));
              });
                },
              child: Icon(Icons.add_circle),
            );
          }
        ),

      ),
    );
  }

}