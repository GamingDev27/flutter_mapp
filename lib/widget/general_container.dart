import 'package:flutter/material.dart';
import 'package:flutter_mapp/data/constant.dart';

class GeneralContainer extends StatefulWidget {
  const GeneralContainer({
    super.key,
    required this.company,
    required this.route,
    required this.date,
    required this.time,
  });
  final String company;
  final String route;
  final String date;
  final String time;

  @override
  State<GeneralContainer> createState() => _GeneralContainerState();
}

class _GeneralContainerState extends State<GeneralContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 5),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.company,
                style: KTextStyle.titleTextTeal,
                softWrap: true,
              ),
              Text(widget.route, style: KTextStyle.descriptionTextTeal),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.date, style: KTextStyle.descriptionTextTeal),
                  Text(widget.time, style: KTextStyle.descriptionTextTeal),
                ],
              ),
              SizedBox(height: 12.0),
              FilledButton(
                onPressed: () {},
                child: Text('Start Trip'),
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
