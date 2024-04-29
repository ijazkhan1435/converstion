import 'package:flutter/cupertino.dart';

class CustomCard extends StatelessWidget {
  final String? img;
 final String? title;
  const CustomCard({Key? key,required this.img,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: CupertinoColors.white,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(img!,
          width: 34,
          height: 34,
          fit: BoxFit.cover,
        ),
        Text(title!)
      ],
    ),);
  }
}
