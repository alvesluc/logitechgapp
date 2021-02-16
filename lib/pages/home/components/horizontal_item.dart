import 'package:flutter/material.dart';

class HorizontalItem extends StatefulWidget {
  final bool selected;

  const HorizontalItem({this.selected = false});
  @override
  _HorizontalItemState createState() => _HorizontalItemState();
}

class _HorizontalItemState extends State<HorizontalItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Color(0xFFEDEDED),
        ),
        borderRadius: BorderRadius.circular(30),
        color: widget.selected ? Color(0xFF00B8FC) : Color(0xFFFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.mouse_outlined,
              color: Color(0xFF333333),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Mouse',
            style: TextStyle(
                color: widget.selected ? Color(0xFFF5F5F5) : Color(0xFF2F2F2F)),
          )
        ],
      ),
    );
  }
}
