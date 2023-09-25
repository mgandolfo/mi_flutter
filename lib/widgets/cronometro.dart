import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';

class Cronometro extends StatefulWidget {
  final double initTime, fontSize;

  const Cronometro({super.key, this.initTime = 0, this.fontSize = 30});

  @override
  State<StatefulWidget> createState() => CronometroState();
}

class CronometroState extends State<Cronometro> with AfterLayoutMixin {
  late double _time;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.initTime;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Cronometro oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("old fontSize ${oldWidget.fontSize}");
  }

  @override
  void afterFirstLayout(BuildContext context) {
    /*showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("AfterFirstLayou"),
          );
        });*/
  }

  @override
  void dispose() {
    //cancel timer
    super.dispose();
  }

  void _Start() {
    // this.context;
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      setState(() {
        _time += 1;
      });
    });
  }

  void _Stop() {
    if (_timer != null) {
      _timer.cancel(); // es lo mismo que abajo, es condición ternaria
    }
    //_timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            _time.toString(),
            style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: FontWeight.w900,
                color: Colors.redAccent),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: CircleAvatar(child: Icon(Icons.play_arrow)),
                onPressed: _Start,
              ),
              CupertinoButton(
                child: CircleAvatar(child: Icon(Icons.stop)),
                onPressed: _Stop,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
