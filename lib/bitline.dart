import 'package:flutter/material.dart';

class BitLine extends StatelessWidget {
  final List<int> bitList;
  const BitLine({required this.bitList, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[0] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[0] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[0]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[1] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[1] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[1]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[2] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[2] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[2]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[3] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[3] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[3]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[4] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[4] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[4]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[5] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[5] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[5]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[6] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[6] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[6]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[7] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[7] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[7]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[8] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[8] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[8]}', style: TextStyle(color: Colors.white)),
        ),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: bitList[9] == 0 ? Colors.transparent : Colors.green,
                )
              ],
              color: bitList[9] == 0 ? Colors.transparent : Colors.green),
          child: Text('${bitList[9]}', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
