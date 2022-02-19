import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:graphicsdesigner_portfolio/about_me.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFD0EBF1),
                  Colors.white,
                ],
              )),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.menu,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Carlo Bedin',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Product Designer',
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
                  ),
                ),
              ),
              const Image(
                image: AssetImage('assets/avator.png'),
                alignment: Alignment.center,
              ),
              Expanded(child: customContainer(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customContainer(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35.0))),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Can I help you?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16.0),
                  ),
                  Text(
                    "Let's work",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 18.0),
                  )
                ],
              ),
              MaterialButton(
                onPressed: () {},
                child: const Text('Contact me',
                    style: TextStyle(color: Colors.white)),
                color: const Color(0xFFBC82FF),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              userInfoContainer(
                  iconData: Icons.work,
                  label1: 'Know',
                  label2: 'my work',
                  color: const Color(0xFFF197BC)),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutMe()),
                  );
                },
                child: userInfoContainer(
                    iconData: Icons.work,
                    label1: 'About',
                    label2: 'me',
                    color: const Color(0xFF7CC8D2)),
              ),
              userInfoContainer(
                  iconData: Icons.work,
                  label1: 'Where',
                  label2: 'I am',
                  color: const Color(0xFFB0C1F4)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget userInfoContainer({required Color color,
  required IconData iconData,
  required String label1,
  required String label2}) {
  return Container(
    width: 130.0,
    height: 155.0,
    margin: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20.0))),
    child: Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 3.0),
              child: Text(
                label1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700),
              )),
          Text(
            label2,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    ),
  );
}
