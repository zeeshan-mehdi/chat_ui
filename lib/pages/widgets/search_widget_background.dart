import 'package:flutter/material.dart';

class SearchWidgetBorder extends StatelessWidget {
  final child;
  final double margin;
  const SearchWidgetBorder({Key? key,this.child,this.margin = 18}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin),
      child: Container(
          decoration: BoxDecoration(
            //border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                ),
              ]
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),

            child: Padding(
              padding:  const EdgeInsets.only(left: 8.0,right: 8.0),
              child: child,
            ),
          )
      ),
    );
  }
}
