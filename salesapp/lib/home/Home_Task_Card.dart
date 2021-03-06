import 'package:flutter/material.dart';
import 'package:salesapp/main/public.dart';

class HomeTaskCard extends StatelessWidget {
  final String cardTitle;
  final String cardCount;
  final String unfinishedCount;
  final VoidCallback callback;

  HomeTaskCard(
      {this.cardTitle, this.cardCount, this.unfinishedCount, this.callback});

  Widget itemCountWidget() {
    return new Text(
      this.cardCount,
      style: new TextStyle(
          fontSize: 32,
          color: SAColor.textBlack,
          fontWeight: FontWeight.bold),
    );
    if (this.unfinishedCount.length > 0) {
      return new Text(
        this.cardCount,
        style: new TextStyle(
            fontSize: 32,
            color: SAColor.textBlack,
            fontWeight: FontWeight.bold),
      );
    } else {
      return new Row(
        children: <Widget>[
          new Text(
            this.cardCount,
            style: new TextStyle(
                fontSize: 32,
                color: SAColor.textBlack,
                fontWeight: FontWeight.bold),
          ),
          new Column(
            children: <Widget>[
              new Container(
                width: 12,
                height: 22,
                decoration: new BoxDecoration(
                    border: new Border.all(width: 0.5, color: SAColor.redColor),
                    borderRadius: new BorderRadius.all(new Radius.circular(6)),
                    color: SAColor.redColor),
                child: new Text(
                  this.unfinishedCount,
                  style: new TextStyle(fontSize: 10, color: SAColor.white),
                ),
              )
            ],
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: this.callback,
      child: new Container(
        width: 120,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text(
              this.cardTitle,
              style: new TextStyle(fontSize: 15, color: SAColor.textBlack),
            ),
            itemCountWidget(),
            new Text(
              '去看看',
              style: new TextStyle(fontSize: 12, color: SAColor.textOrangeColor),
            )
          ],
        ),
      )
    );
  }
}
