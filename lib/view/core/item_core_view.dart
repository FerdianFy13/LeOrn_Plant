import 'package:flutter/material.dart';

class ItemCoreView extends StatelessWidget {
  const ItemCoreView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.only(left: 20),
        alignment: Alignment.center,
        child: InkWell(
          child: Image(
            image: AssetImage('assets/image/core/icon1.png'),
            width: 30,
            height: 30,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return;
                },
              ),
            );
          },
        ),
      ),
      title: Align(
        alignment: Alignment.center,
        child: Center(
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: InkWell(
              child: Image(
                image: AssetImage('assets/image/core/icon2.png'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return;
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
      actions: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 30,
            height: 30,
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
              child: Image(
                image: AssetImage('assets/image/core/icon3.png'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return;
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
