import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
          colors: [Color(0xff73EE8C5), Color(0xff30BAD6)]));

  @override
  Widget build(BuildContext context) {
    var container = Container(
      decoration: boxDecoration,
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          const Page2(),
        ],
      ),
    );
    return Scaffold(body: container);
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text(
            '21º',
            style: textStyle,
          ),
          Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Bienvenidos',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA), shape: StadiumBorder()),
      )),
    );
  }
}
