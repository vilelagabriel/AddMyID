import 'package:flutter/material.dart';
import './view/new_scan.dart';
import './view/create_My_ID.dart';

main() => runApp(PrincipalState());

class _Principal extends State<PrincipalState> {
  int _currentIndex = 0;
  String _scanBarcode = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("AddMyID"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => scanQRcode().then((value) => setState(() {
              if (value == "-1") {
                _scanBarcode = "";
              }else{
              _scanBarcode = value;
              }
            })),
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: CreateMyId() //Text(_scanBarcode),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            title: Text("QRCode"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        
      ),
    ));
  }
}

class PrincipalState extends StatefulWidget {
  _Principal createState() {
    return _Principal();
  }
}
