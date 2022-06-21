import 'package:flutter/material.dart';


class InformationPage extends StatefulWidget {
  const InformationPage({Key key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: const Text(
                      'BMI categories',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ], // Children
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Less than 18.5',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "you're underweight.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ], // Children
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '18.5 to 24.9',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "you're normal.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ], // Children
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '25 to 29.9',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "you're overweight.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ], // Children
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '30 or more',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'obesity.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ], // Children
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/');
                        });
                      },
                      child: Column(
                      children: [
                        Text('Back',
                            style: TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    )),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
