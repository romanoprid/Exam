import 'package:exam/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      child: Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 75,
                  )),
                  SizedBox(
                    width: 150,
                  ),
                  InkWell(
                      child: Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 75,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Second()),
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          child: new SizedBox(
                              child: FloatingActionButton(
                            backgroundColor: Colors.red,
                            child: null,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Second();
                                }),
                              );
                              print("Cliked");
                            },
                          ))))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      child: Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 75,
                  )),
                  SizedBox(
                    width: 150,
                  ),
                  InkWell(
                      child: Container(
                    color: Colors.yellow,
                    width: 100,
                    height: 75,
                  )),
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
