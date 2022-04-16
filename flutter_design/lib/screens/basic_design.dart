import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        const Ttitle(),
        ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
              'Eu labore deserunt laborum velit dolore nisi do officia eu nulla occaecat est reprehenderit fugiat. Do eiusmod esse reprehenderit Lorem esse exercitation nisi ut. Cupidatat consequat in tempor anim non consectetur duis sunt. Cupidatat et velit commodo enim et ipsum voluptate consequat mollit fugiat dolor id.'),
        )
      ],
    ));
  }
}

class Ttitle extends StatelessWidget {
  const Ttitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Oeshinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('Kanderstang, Switzerland',
                  style: TextStyle(color: Colors.black54)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          // ignore: prefer_const_constructors
          CustomButton(
            icon: Icons.map_sharp,
            text: 'Route',
          ),
          // ignore: prefer_const_constructors
          CustomButton(icon: Icons.share, text: 'Share with'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;

  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        this.icon,
        color: Colors.blueAccent,
        size: 40,
      ),
      Text(this.text, style: TextStyle(color: Colors.blueAccent)),
    ]);
  }
}


/*
    const Icon(Icons.arrow_upward_outlined, color: Colors.blueAccent),
        const Icon(Icons.share, color: Colors.blueAccent),
*/