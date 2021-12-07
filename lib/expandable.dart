import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter_glow/flutter_glow.dart';

class expandable extends StatefulWidget {
  const expandable({Key? key}) : super(key: key);

  @override
  _expandableState createState() => _expandableState();
}

class _expandableState extends State<expandable> {
  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Expandable(
              primaryWidget: Container(
                height: 30,
                child: Center(
                  child: Text("Hello World"),
                ),
              ),
              secondaryWidget: Container(
                height: 45,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text("Hello"),
                      Text("World"),
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.grey.withOpacity(0.4),
              showArrowIcon: true,
              centralizePrimaryWidget: true,
              isClickable: true,
              padding: EdgeInsets.all(5.0),
            ),
            SizedBox(
              height: 20,
            ),
            Expandable.extended(
              elevation: 10,
              isClickable: true,
              initiallyExpanded: true,
              centralizePrimaryWidget: true,
              centralizeAdditionalWidget: true,
              primaryWidget: Container(
                height: 30,
                child: Center(
                  child: Text("Important Summary"),
                ),
              ),
              secondaryWidget: Container(
                height: 70,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("More"),
                      Text("Details"),
                      Text("About"),
                      Text("Something"),
                    ],
                  ),
                ),
              ),
              arrowWidget: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: Colors.grey,
                size: 20,
              ),
              additionalWidget: Text("show me"),
              arrowLocation: ArrowLocation.left,
            ),
            SizedBox(
              height: 20,
            ),
            GlowButton(
              child: Text("Glow"),
              onPressed: () {},
              color: Colors.indigo,
            ),
            SizedBox(height: 20),
            GlowCheckbox(
              value: checkboxSelected,
              enable: true,
              color: Colors.lightBlue,
              onChange: (bool value) {
                setState(() {
                  checkboxSelected = !checkboxSelected;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    iconSelected = !iconSelected;
                  },
                );
              },
              child: GlowIcon(
                iconSelected ? Icons.wb_cloudy : Icons.cloud_queue,
                color: Colors.lightGreen,
                glowColor:
                    iconSelected ? Colors.limeAccent : Colors.transparent,
                size: 100,
                blurRadius: 9,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GlowText(
              'Glow Text',
              style: TextStyle(fontSize: 40, color: Colors.white12),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GlowRadio<bool>(
                  value: true,
                  color: Colors.white70,
                  groupValue: radioSelected,
                  onChange: (value) {
                    setState(() {
                      radioSelected = value;
                      log(value.toString());
                    });
                  },
                ),
                SizedBox(
                  width: 32,
                ),
                GlowRadio<bool>(
                    value: false,
                    color: Colors.yellowAccent,
                    groupValue: radioSelected,
                    onChange: (value) {
                      setState(() {
                        radioSelected = value;
                        log(value.toString());
                      });
                    }),
                SizedBox(
                  height: 32,
                ),
                GlowSwitch(
                  onChanged: (value) {
                    setState(() {
                      switchSelected = value;
                    });
                  },
                  value: switchSelected,
                  activeColor: Colors.black26.withOpacity(0.6),
                  blurRadius: 4,
                ),
                SizedBox(
                  height: 32,
                ),
                GlowLineProgress(
                  blurRadius: 12,
                  glowColor: Colors.blueGrey,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
