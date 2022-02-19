import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFF7CC8D2),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                padding: EdgeInsets.only(left: 10.0,bottom: 0.0,top: 10.0),
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About me',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _iconContainer(
                    const Color(0xFF96D3DB),
                    Icons.work_outline,
                    const Color(0xFFD2EBF3),
                    'Hello',
                    const Color(0xFFD3EDF1),
                  ),
                  _iconContainer(const Color(0xFFFFFFFF), Icons.work_outline,
                      const Color(0xFF7CC8D2), 'Experience', Colors.white),
                  _iconContainer(
                    const Color(0xFF96D3DB),
                    Icons.menu_book_outlined,
                    const Color(0xFFD2EBF3),
                    'Academic',
                    const Color(0xFFD3EDF1),
                  ),
                  _iconContainer(
                    const Color(0xFF96D3DB),
                    Icons.star,
                    const Color(0xFFD2EBF3),
                    'Hobbies',
                    const Color(0xFFD3EDF1),
                  ),
                ],
              ),
              Expanded(child: _customContainer(context))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _iconContainer(Color color, IconData iconData, Color iconColor,
    String label, Color labelColor) {
  return Column(children: [
    Container(
      margin: const EdgeInsets.all(7.0),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          color: color),
      child: Center(
          child: Icon(
        iconData,
        color: iconColor,
        size: 40.0,
      )),
    ),
    Text(
      label,
      style: TextStyle(color: labelColor),
    )
  ]);
}

Widget _customContainer(context) {
  return Container(
    margin: const EdgeInsets.only(top: 20.0),
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(35.0))),
    child: Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Company',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10.0),
          Text('2018 - Present',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Product Designer',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Current working as a Senior Designer '
            '\nat Company creating and improving advanced '
            '\napplications for stock exchange and \ncryptocurrency market.',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Container(
            height: 3.0,
            width: 25.0,
            color: Colors.grey.shade500,
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Text(
            'Company',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10.0),
          Text('2017 - 2018',
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 20.0),
          const Text(
            'UX/UI Designer',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 20.0),
          Text(
            'At Company I worked as UX/UI Designer. '
            '\nDeveloping projects for mobile applications '
            '\nand digital platforms.',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}
