import 'package:flutter/material.dart';
import 'package:myfinancys/screens/add.dart';
import 'package:myfinancys/screens/home.dart';
import 'package:myfinancys/screens/statistics.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List Screen = [Home(), Statictics(),Home(), Statictics()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Add_Screen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff368983),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color = 0;
                  });
                },
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: index_color == 0 ? Color(0xff368983) : Colors.grey,
              )),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color = 1;
                  });
                },
                  child: Icon(
                    Icons.bar_chart_outlined,
                    size: 30,
                    color: index_color == 1 ? Color(0xff368983) : Colors.grey,
              )),
              SizedBox(width: 20),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color = 2;
                  });
                },
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 30,
                    color: index_color == 2 ? Color(0xff368983) : Colors.grey,
              )),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index_color = 3;
                  });
                },
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 30,
                    color: index_color == 3 ? Color(0xff368983) : Colors.grey,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
