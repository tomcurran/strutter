import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import './api/api.dart';

class ActivitySummaryItem extends StatelessWidget {
  final SummaryActivity summaryActivity;
  final DetailedAthlete detailedAthlete;

  const ActivitySummaryItem({
    Key key,
    this.summaryActivity,
    this.detailedAthlete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 6, 6, 6),
                    child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    detailedAthlete.profileMedium)))),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(
                      "icons/badges_multicolor_summit_small.svg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(16, 4, 0, 2),
                          child: Text(
                            "${detailedAthlete.firstname} ${detailedAthlete.lastname}",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 2, 0, 4),
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Image(
                              image: AssetImage(
                                  "icons/ic_shoe_sneaker_black_24dp.png")),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(4, 2, 0, 4),
                          child: Text(
                            DateFormat("dd MMMM y 'at' k:m")
                                .format(summaryActivity.startDateLocal),
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w300),
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Text(
                    summaryActivity.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Distance",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Padding(padding: EdgeInsets.only(top: 4)),
                    Text(
                      "${(summaryActivity.distance / 1000).toStringAsFixed(2)} km",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 16, right: 16)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pace",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Padding(padding: EdgeInsets.only(top: 4)),
                    Text(
                      "${((1000 / summaryActivity.averageSpeed) / 60).truncate()}.${((1000 / summaryActivity.averageSpeed).truncate() % 60).toString().padLeft(2, '0')} /km",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 16, right: 16)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Padding(padding: EdgeInsets.only(top: 4)),
                    Text(
                      "??m ??s",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
