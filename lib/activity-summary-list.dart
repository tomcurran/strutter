import 'package:flutter/material.dart';
import 'package:strava_flutter/strava.dart';

import './activity-summary-item.dart';
import './secret.dart';
import './api/api.dart';

class ActivitySummaryList extends StatefulWidget {
  List<SummaryActivity> _summaryActivities = [];

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

      setState(() {
        widget._summaryActivities = summaryActivities
            .where((activity) => activity.type == ActivityType.run_)
            .toList();
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
          final summaryActivity = widget._summaryActivities[index];
          return ActivitySummaryItem(
            summaryActivity: summaryActivity,
          );
        },
        itemCount: widget._summaryActivities.length,
      ),
    );
  }
}
