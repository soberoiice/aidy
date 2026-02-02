import 'package:aidy/views/widgets/account_card_widget.dart';
import 'package:aidy/views/widgets/setting_list_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        automaticallyImplyLeading: false,
        toolbarHeight: 80.0,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              AccountCardWidget(),
              SizedBox(height: 20),
              SettingListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
