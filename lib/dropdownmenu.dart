import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
            PopupMenuButton<String>(
              icon: Image.asset('assets/down.png'),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            );
  }
}

class Constants {
  static const String FirstItem = '글로그';
  static const String SecondItem = '로그아웃';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.FirstItem) {
    print('I First Item');
  } else if (choice == Constants.SecondItem) {
    print('I Second Item');
  }
}