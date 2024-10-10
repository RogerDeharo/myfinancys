import 'package:flutter/material.dart';
import 'package:myfinancys/widgets/chart.dart';

class Statictics extends StatefulWidget {
  const Statictics({Key? key}) : super(key: key);

  @override
  State<Statictics> createState() => _StaticticsState();
}

class _StaticticsState extends State<Statictics> {
  List day = ['Day', 'Week', 'Month', 'Year'];
  int index_color = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Statistics',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(4, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            index_color = index;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index_color == index
                                  ? Color.fromARGB(255, 47, 125, 121)
                                  : Colors.white),
                          alignment: Alignment.center,
                          child: Text(
                            day[index],
                            style: TextStyle(
                                color: index_color == index
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Expense',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.arrow_downward_sharp, color: Colors.grey,)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey, width: 2
                        ),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Chart(),
            ]),
          )
        ],
      )),
    );
  }
}
