import 'package:flutter/material.dart';
import 'package:mylog_flutter/dropdownmenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        backgroundColor: Colors.white,
        dialogBackgroundColor: Color.fromRGBO(136, 77, 167, 1),
        primaryColor: Color.fromRGBO(136, 77, 167, 1),
        toggleableActiveColor: Color.fromRGBO(136, 77, 167, 1),
        focusColor: Color.fromRGBO(136, 77, 167, 1),
        shadowColor: Color.fromRGBO(136, 77, 167, 1),


    ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Image.asset('assets/photolog_search.png'),
          onPressed: (){
            print('menu clicked');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Image.asset('assets/home.png'),
              onPressed: () {
                print('shopping cart button is clicked');
              }
          ),
          DropDownMenu(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              padding: EdgeInsets.fromLTRB(5,0,5,0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Image.asset('assets/refresh.png'),
                        onPressed: () {
                          print('refreshed');
                        }
                    ),
                    //차후 리스트화
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('테스트'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(136, 77, 167, 1),),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.0,
                                color: Color.fromRGBO(136, 77, 167, 1),
                              ),
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red) // border line color
                            )),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('테스트'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(136, 77, 167, 1),),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.0,
                                color: Color.fromRGBO(136, 77, 167, 1),
                              ),
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red) // border line color
                            )),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('테스트'),
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(136, 77, 167, 1),),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.0,
                                color: Color.fromRGBO(136, 77, 167, 1),
                              ),
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red) // border line color
                            )),
                      ),
                    ),
                    IconButton(
                        icon: Image.asset('assets/tag_dropdown.png'),
                        onPressed: () {
                          print('refreshed');
                        }
                    ),

                    ],
              ),
            ),





          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        focusColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        enableFeedback: true,
        child: Image.asset('assets/add.png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/hashtag.png'),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/user.png'),
              label: ''
          ),
        ],
        onTap: (index){
          _idx = index;
        },
        currentIndex: _idx,
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


int _idx = 0;


//나중에 FAB 더 내릴 때 고민
class CustomFabLoc extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
      scaffoldGeometry.scaffoldSize.width -
          scaffoldGeometry.floatingActionButtonSize.width,
      scaffoldGeometry.scaffoldSize.height -
          scaffoldGeometry.floatingActionButtonSize.height,
    );
  }
}