import 'package:flutter/material.dart';
import 'package:strava_flutter/Models/activity.dart';
import 'package:strava_flutter/strava.dart';
import 'package:intl/intl.dart';

import './activity-summary-item.dart';
import './activity-summary-model.dart';
import './secret.dart';

class ActivitySummaryList extends StatefulWidget {
  List<ActivitySummaryModel> _activitySummaries = [
    // ActivitySummaryModel(
    //   avatar: "images/avatar_iainsmith.jpg",
    //   name: "Iain Smith",
    //   date: "Today at 12:41 PM",
    //   title: "Lunch Run",
    //   distance: "5.63 km",
    //   pace: "4.53 /km",
    //   time: "27m 33s",
    // ),
    // ActivitySummaryModel(
    //   avatar: "images/avatar_iainsmith.jpg",
    //   name: "Iain Smith 3",
    //   date: "Today at 12:41 PM",
    //   title: "Lunch Run",
    //   distance: "5.63 km",
    //   pace: "4.53 /km",
    //   time: "27m 33s",
    // ),
  ];

  ActivitySummaryList({
    Key key,
  }) : super(key: key);

  @override
  _ActivitySummaryListState createState() => _ActivitySummaryListState();
}

class _ActivitySummaryListState extends State<ActivitySummaryList> {
  void _loadData() async {
    bool isAuthOk = false;

    final strava = Strava(true, secret);
    final prompt = 'auto';

    isAuthOk =
        await strava.oauth(clientId, 'activity:read_all', secret, prompt);

    if (isAuthOk) {
      int after =
          (DateTime.now().subtract(Duration(days: 14)).millisecondsSinceEpoch /
                  1000)
              .round();
      int before = (DateTime.now().millisecondsSinceEpoch / 1000).round();
      List<SummaryActivity> _summaryActivities =
          await strava.getLoggedInAthleteActivities(before, after);
      if (_summaryActivities == null || _summaryActivities.isEmpty) {
        print('Error in getLoggedInAthleteActivities');
      } else {
        print('getLoggedInAthleteActivities ');
        // _summaryActivities.forEach((activity) =>
        //     print('${activity.name}   ${activity.startDateLocal}'));
        List<ActivitySummaryModel> activitySummaries = _summaryActivities
            .where((activity) => activity.type == ActivityType.Run)
            .map((activity) => ActivitySummaryModel(
                  avatar: "images/avatar_iainsmith.jpg",
                  name: "??? ??????",
                  date: DateFormat("dd MMMM y 'at' k:m")
                      .format(activity.startDateLocal),
                  title: activity.name,
                  distance:
                      "${(activity.distance / 1000).toStringAsFixed(2)} km",
                  pace: "?.?? /km",
                  time: "??m ??s",
                ))
            .toList();
        setState(() {
          widget._activitySummaries = activitySummaries;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
      color: Color.fromARGB(0, 237, 237, 237),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final activitySummary = widget._activitySummaries[index];
          return ActivitySummaryItem(
            activitySummary: activitySummary,
          );
        },
        itemCount: widget._activitySummaries.length,
      ),
    );
  }
}
