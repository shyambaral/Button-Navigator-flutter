import 'package:flutter/material.dart';

void main()=>
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Botton Nav app",
  home: MainPage(),
));

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 int _selectedIndex =0;

 List<Widget> meroWidget = <Widget>[
 Container(
  height: 50,
  color: Color(0xFF),
  child: Center(
    child: Text("welcome to Home", style: TextStyle(fontSize: 40),),
  ),
 ),
Container(
  child: Center(
    child: Text("welcome to About", style: TextStyle(fontSize: 40),),
  ),
 ),
Container(
  child: Center(
    child: Text("welcome to Setting", style: TextStyle(fontSize: 40),),
  ),
 ),

 ];

 _onItemTap(int index){
  setState(() {
    _selectedIndex = index;
  });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF358DD0),
        centerTitle: true,
        title: Text("Botton Nav Application"),

      ),
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "setting"
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      );
    
  }
}