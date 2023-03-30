import 'package:flutter/material.dart';

class photolog_titlebar extends StatefulWidget {
  const photolog_titlebar({Key? key}) : super(key: key);

  @override
  State<photolog_titlebar> createState() => _Photolog_TitleBarState();
}

class _Photolog_TitleBarState extends State<photolog_titlebar> {
  final _cities = ['서울', '대전', '대구', '부산', '인천', '울산', '광주'];
  String? _selectedCity;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedCity = _cities[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        IconButton(
            icon: Image.asset('assets/down.png'),
            onPressed: () {
              print('search button is clicked');
            }
        ),
      ],
    );
  }
}