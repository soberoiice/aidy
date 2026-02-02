import 'package:aidy/views/pages/personal_Info_page.dart';
import 'package:flutter/material.dart';

class AccountCardWidget extends StatelessWidget {
  const AccountCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PersonalInfoPage();
            },
          ),
        );
      },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
                ),
              ),
              SizedBox(
                width: 225,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      'Royce Akhabhoa',
                    ),
                    Text(
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                      'example@gmail.com',
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ],
          ),
        ),
      ),
    );
  }
}
