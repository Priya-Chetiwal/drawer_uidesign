import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("login"),
          ),
          endDrawer: Drawer(
            child: ListView(children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "Welcome to Flutter",
                  style: TextStyle(
                    backgroundColor: Colors.white24,
                    fontSize: 45,
                    color: Colors.black,
                  ),
                ),
                curve: Curves.bounceIn,
              ),
              ListTile(
                title: Text("Contacts"),
                leading: new Icon(Icons.contacts),
              ),
              ListTile(
                title: Text("Events"),
                leading: new Icon(Icons.event),
              ),
              Divider(
                height: 0.5,
              ),
              ListTile(
                title: Text("Notes"),
                leading: new Icon(Icons.notes),
              ),
              ListTile(
                title: Text("Steps"),
                leading: new Icon(Icons.short_text),
              ),
              Divider(
                height: 0.5,
              ),
              ListTile(
                title: Text("Authors"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                  title: Text("Flutter Documentation"),
                  leading: new Icon(Icons.document_scanner)),
              ListTile(
                title: Text("Useful Links"),
                leading: new Icon(Icons.link),
              ),
              Divider(
                height: 0.5,
              ),
              ListTile(
                title: Text("Report an Issue"),
                leading: new Icon(Icons.report),
              ),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
              elevation: 8.0,
              child: Icon(Icons.add),
              onPressed: () {
                ("New");
              }),
          // backgroundColor: Colors.li,
          primary: true,
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.only(top: 100, left: 50),
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      hintText: "Enter UserId",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                SizedBox(
                  height: 100,
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      hintText: "Enter Your password",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ("home"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.schedule),
                label: ("Schedule"),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: ("Profile")),
            ],
          ),
        ));
  }
}
