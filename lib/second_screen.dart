import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
                    color: Colors.black,
                    width: 100,
                    height: 75,
                  )),
                  SizedBox(
                    width: 150,
                  ),
                  InkWell(
                      child: Container(
                    color: Colors.black,
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
                    color: Colors.black,
                    width: 100,
                    height: 75,
                  )),
                  SizedBox(
                    width: 150,
                  ),
                  InkWell(
                      child: Container(
                    color: Colors.black,
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
