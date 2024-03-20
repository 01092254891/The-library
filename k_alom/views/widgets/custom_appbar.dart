import 'package:flutter/material.dart';

import '../../../home_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.title, required this.icon, this.onPressed})
      : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.keyboard_double_arrow_left)),
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        SizedBox(
          width: 9,
        ),
        /* CustomIcon(
          onPressed: onPressed,
          icon: icon,
        )*/

        SearchBar(),
      ],
    );
  }
}
