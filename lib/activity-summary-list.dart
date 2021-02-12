import 'package:flutter/material.dart';
import 'package:strava_flutter/strava.dart';
import 'package:intl/intl.dart';

import './activity-summary-item.dart';
import './activity-summary-model.dart';
import './secret.dart';
import './api/api.dart';

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
      var storedToken = await strava.getStoredToken();

      defaultApiClient.getAuthentication<OAuth>('strava_oauth').accessToken =
          storedToken.accessToken;

      var activitiesApi = ActivitiesApi();
      int after =
          (DateTime.now().subtract(Duration(days: 14)).millisecondsSinceEpoch /
                  1000)
              .round();
      int before = (DateTime.now().millisecondsSinceEpoch / 1000).round();

      var page = 0;
      const stravaPageSizeMax = 200;
      List<SummaryActivity> summaryActivities = List();
      List<SummaryActivity> summaryActivitiesPage;
      do {
        page++;
        summaryActivitiesPage =
            await activitiesApi.getLoggedInAthleteActivities(
          before: before,
          after: after,
          page: page,
          perPage: stravaPageSizeMax,
        );
        summaryActivities.addAll(summaryActivitiesPage);
      } while (summaryActivitiesPage.isNotEmpty);

      var activitySummaries = summaryActivities
          .where((activity) => activity.type == ActivityType.run_)
          .map((activity) => ActivitySummaryModel(
                avatar: "images/avatar_iainsmith.jpg",
                name: "??? ??????",
                date: DateFormat("dd MMMM y 'at' k:m")
                    .format(activity.startDateLocal),
                title: activity.name,
                distance: "${(activity.distance / 1000).toStringAsFixed(2)} km",
                pace:
                    "${((1000 / activity.averageSpeed) / 60).truncate()}.${((1000 / activity.averageSpeed).truncate() % 60).toString().padLeft(2, '0')} /km",
                time: "??m ??s",
              ))
          .toList();

      setState(() {
        widget._activitySummaries = activitySummaries;
      });
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
