import 'package:flutter/material.dart';
import 'package:strava_flutter/strava.dart';

import './activity-summary-item.dart';
import './secret.dart';
import './api/api.dart';

class ActivitySummaryList extends StatefulWidget {
  ActivitySummaryList({
    Key key,
  }) : super(key: key);

  @override
  _ActivitySummaryListState createState() => _ActivitySummaryListState();
}

class _ActivitySummaryListState extends State<ActivitySummaryList> {
  final strava = Strava(true, secret);
  List<SummaryActivity> _summaryActivities = [];
  DetailedAthlete _detailedAthlete;

  void _loadData() async {
    bool isAuthOk =
        await strava.oauth(clientId, 'activity:read_all', secret, 'auto');
    if (isAuthOk) {
      var storedToken = await strava.getStoredToken();

      defaultApiClient.getAuthentication<OAuth>('strava_oauth').accessToken =
          storedToken.accessToken;

      var athletesApi = AthletesApi();
      var detailedAthlete = await athletesApi.getLoggedInAthlete();

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
        _detailedAthlete = detailedAthlete;
        _summaryActivities = summaryActivities
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
      color: Color.fromARGB(0, 237, 237, 237),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.transparent,
          height: 16,
        ),
        itemBuilder: (context, index) {
          return ActivitySummaryItem(
            key: new Key(_summaryActivities[index].id.toString()),
            detailedAthlete: _detailedAthlete,
            summaryActivity: _summaryActivities[index],
          );
        },
        itemCount: _summaryActivities.length,
      ),
    );
  }
}
