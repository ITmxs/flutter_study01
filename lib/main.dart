import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.  
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Scaffold Example'),
      ),
      body: Center(
        child: Text('We have pressed the button $_count times.'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        // elevation: 40.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("坚果前端"),
              accountEmail: Text("微信：xjg13690"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("abc"),
              ),
            ),
            ListTile(
              title: new Text("QQ：852851198@qq.com"),
              leading: new Icon(Icons.mail),
            ),
            Divider( height: 0.1,),
            ListTile(
              title: new Text("11"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("组织"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("加油"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }
}  