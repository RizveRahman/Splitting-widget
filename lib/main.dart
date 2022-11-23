import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [ActivePeople(), ChatList(), Story(), Grid()],
      )
    );
  }
}


class ActivePeople extends StatelessWidget {
  const ActivePeople({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(flex: 1,child:
    Container(
      color: Colors.blueAccent.shade200,
      child: ListView.builder(itemBuilder: (context, index) =>
        const Padding(padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 70,
          child: CircleAvatar(
            backgroundColor: Colors.white70,
          ),
        ),
        ), scrollDirection: Axis.horizontal,
        itemCount: 20
      ),
    ));
  }
}

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.green,
        child: ListView.separated(itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white70,
            ),
            title: Text('Name'),
            subtitle: Text('Hello Reza'),
            trailing: Icon(Icons.delete),
          ),
        ), separatorBuilder: ( context, index) {
          return const Divider(height: 35, thickness: 3,);  }, itemCount: 11,),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(flex: 1,child: Container(
      color: Colors.grey,
      child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context, index) =>
        Padding(padding: EdgeInsets.all(8),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        )
      ) ,
    ));
  }

}

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(flex: 1,child: Container(
      color: Colors.white,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all(8),

            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    ));
  }

}