import 'package:atividade_pratica_2/bloc/imc_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  double opacidade1 = 1.0;
  double opacidade2 = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: double.infinity,
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: const Text(
                        'BMI Calculator',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        child: const ImageIcon(
                                AssetImage('imgs/ponto-exclamacao.png'),
                                size: 20,
                        ),
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/information');
                        });
                      },
                      ),
                    ),
                  ], // Children
                ),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          GestureDetector(
                              child: Opacity(
                                  opacity: opacidade1,
                                  child: Column(
                                    children: [
                                      Image.asset('imgs/img-homem.png',
                                          width: 80, height: 80),
                                      // ignore: avoid_unnecessary_containers
                                      Container(
                                        margin: const EdgeInsets.only(top: 20),
                                        child: const Text(
                                          'Male',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              onTap: () {
                                setState(() {
                                  opacidade1 = 1.0;
                                  opacidade2 = 0.3;
                                });
                              }),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: const Text(
                              'Your weight (kg)',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                controller: bloc.weightCtrl,
                                keyboardType: TextInputType.number,
                                maxLength: 3,
                                style: const TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ], //children
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            GestureDetector(
                                child: Opacity(
                                    opacity: opacidade2,
                                    child: Column(
                                      children: [
                                        Image.asset('imgs/img-mulher.png',
                                            width: 80, height: 80),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: const Text(
                                            'Female',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                onTap: () {
                                  setState(() {
                                    opacidade1 = 0.3;
                                    opacidade2 = 1.0;
                                  });
                                }),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: const Text(
                                'Your height (cm)',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: TextFormField(
                                  controller: bloc.heightCtrl,
                                  keyboardType: TextInputType.number,
                                  maxLength: 3,
                                  style: const TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ], // Children
                ),
              ),
              Container(
                  width: bloc.width,
                  height: bloc.height,
                  child: Column(
                    children: [
                      TextButton(
                          style: bloc.styleButton,
                          onPressed: () {
                            setState(() {
                              bloc.calculaImc();
                            });
                          },
                          child: bloc.coluna),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            child: bloc.redirect,
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed('/');
                              });
                            },
                          )
                        ),
                    ],
                  )
                ),
            ], // Children
          ),
        ));
  }
}
