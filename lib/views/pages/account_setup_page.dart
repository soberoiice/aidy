import 'package:aidy/views/pages/what_bring_you_here_page.dart';
import 'package:aidy/views/widget_tree.dart';
import 'package:aidy/views/widgets/enter_age_widget.dart';
import 'package:aidy/views/widgets/enter_name_widget.dart';
import 'package:flutter/material.dart';

class AccountSetupPage extends StatefulWidget {
  const AccountSetupPage({super.key});

  @override
  State<AccountSetupPage> createState() => _AccountSetupPageState();
}

class _AccountSetupPageState extends State<AccountSetupPage> {
  List<Widget> pages = [
    EnterNameWidget(),
    EnterAgeWidget(),
    WhatBringYouHerePage(),
    EnterAgeWidget(),
    EnterNameWidget(),
    EnterAgeWidget(),
    EnterNameWidget(),
    EnterAgeWidget(),
    EnterNameWidget(),
    EnterAgeWidget(),
  ];
  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            if (sliderValue > 1) {
              setState(() {
                sliderValue = sliderValue - 1;
              });
            }
          },
        ),
        title: SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
            thumbColor: Colors.blue,
            activeTrackColor: Colors.blueAccent,
            inactiveTrackColor: Colors.grey.shade300,
            overlayColor: Colors.blue.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
            trackHeight: 4,
          ),
          child: Slider(
            divisions: 10,
            max: 10.0,
            min: 1,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
        ),
        actions: [
          Text(
            '${sliderValue.toInt()}/10',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
        actionsPadding: EdgeInsets.all(10.0),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            pages.elementAt(sliderValue.toInt() - 1),
            FilledButton(
              onPressed: () {
                if (sliderValue < 10) {
                  setState(() {
                    sliderValue = sliderValue + 1;
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetTree();
                      },
                    ),
                  );
                }
              },
              child: sliderValue == 10.0 ? Text('Finish') : Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
