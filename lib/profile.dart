import 'package:flutter/material.dart';
import 'main.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

Widget info(icon, txt, n) {
  return Row(
    children: [
      SizedBox(
        width: n,
      ),
      Icon(
        icon,
        size: 30,
        color: c,
      ),
      SizedBox(
        width: 30,
      ),
      Text(
        txt,
        style: TextStyle(color: c, fontSize: 20),
      ),
    ],
  );
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                margin: const EdgeInsets.all(20),
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(251, 211, 220, 1),
                    border: Border.fromBorderSide(BorderSide(
                      color: Color.fromRGBO(251, 223, 224, 1),
                      width: 3,
                      style: BorderStyle.solid,
                    ))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/person.jpg"),
                      radius: 80,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: c, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "halmbyd991@gmail.com",
                      style: TextStyle(color: c, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            info(Icons.phone, "Mobile Number   0595646914", 30.0),
            SizedBox(
              height: 30,
            ),
            info(Icons.credit_card, "Referal Code   5f454t558", 30.0),
            SizedBox(
              height: 30,
            ),
            info(Icons.collections_bookmark, "BonBiz Coins   300", 30.0),
            SizedBox(
              height: 30,
            ),
            TextButton(
                child: info(Icons.person_pin, "Edit Profile", 15.0),
              onPressed: (){}
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 18,
                primary: c,

              ),
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
