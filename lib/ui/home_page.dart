import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 

  List<String> litems =["Hello","First", "Second","Third","Fourth","Fifth","Sixth", "7", "8","9","10","11"];
  List<String> sitems = ["World","email","EMAIL","Email","email","EMAIL","email","EMAIL","Email","email","EMAIL","Email", ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      
      
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: new Text("Pratik Singhal"),
              accountEmail: Text("singhalpratik037@gmail.com"),
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Expanded(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.inbox, size: 35.0,color: Colors.grey,),
                      title: Text("Inbox",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),

            ListTile(
                      leading: Icon(Icons.email, size: 35.0,color: Colors.grey,),
                      title: Text("Primary",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),

            ListTile(
                      leading: Icon(Icons.people, size: 35.0,color: Colors.grey,),
                      title: Text("Social",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),
            ListTile(
                      leading: Icon(Icons.star, size: 35.0,color: Colors.grey,),
                      title: Text("Starred",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),

            ListTile(
                      leading: Icon(Icons.watch_later, size: 35.0,color: Colors.grey,),
                      title: Text("Snoozed",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),
            ListTile(
                      leading: Icon(Icons.label, size: 35.0,color: Colors.grey,),
                      title: Text("Important",
                      style: new TextStyle(
                        fontSize: 17.0,
              ),
              ),
            ),

                  ],
                ),
            
             
            ),
          ],
        ),
      ),


      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Email",
        style: new TextStyle(color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
        ),
        ),
        
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(Icons.search,
            size: 25.0,
            ),
          ),
        ],
      ),

      body: ListView.builder(
        shrinkWrap: true,
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int index ){
          return new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              ),
              new Container(
                child: new ListTile(
                  leading: Icon(Icons.account_circle, size: 55.0, color: Colors.red ),
                  title: new Text(litems[index]),
                  subtitle: new Text(sitems[index]),
                  onTap: () => debugPrint(index.toString()),
                  trailing: Icon(Icons.storage),
                ),
              )
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.edit),
      ),
    );
  }
}