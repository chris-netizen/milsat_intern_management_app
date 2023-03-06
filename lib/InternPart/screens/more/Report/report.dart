import 'package:flutter/material.dart';
import '../../../intern_data.dart';

class InternReport extends StatelessWidget {
  const InternReport({super.key});

  @override
  Widget build(BuildContext context) {
    var blocker;

    if (data.values.elementAt(3).toString() == 'BlockerOriginN.mentor') {
      blocker = 'Mentor';
    } else if (data.values.elementAt(3).toString() ==
        'BlockerOriginN.teamMember') {
      blocker = 'Team Member';
    } else if (data.values.elementAt(3).toString() == 'BlockerOriginN.self') {
      blocker = 'Self';
    } else if (data.values.elementAt(3).toString() == 'BlockerOriginT.light') {
      blocker = 'Light Issues';
    } else if (data.values.elementAt(3).toString() ==
        'BlockerOriginT.network') {
      blocker = 'Network';
    } else {
      blocker = data.values.elementAt(3);
    }

    var collaboration;

    if (data.values.elementAt(8).toString() == 'InternRoles.uiUx') {
      collaboration = 'UI/UX';
    } else if (data.values.elementAt(8).toString() == 'InternRoles.frontEnd') {
      collaboration = 'Front End';
    } else if (data.values.elementAt(8).toString() == 'InternRoles.backEnd') {
      collaboration = 'BackEnd';
    } else if (data.values.elementAt(8).toString() ==
        'InternRoles.mobileDevelopment') {
      collaboration = 'Mobile Development';
    } else if (data.values.elementAt(8).toString() ==
        'InternRoles.communityDevelopment') {
      collaboration = 'Community Development';
    } else {
      collaboration = data.values.elementAt(8);
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(data['name']),
            Text(data['department']),
            Text(data['blockerType']),
            Text(blocker),
            Text(data['currentTask']),
            Text(data['hoursDedicated']),
            Text(data['ongoingTask']),
            Text(collaboration),
            Text(data['emotions']),
          ],
        ),
      ),
    );
  }
}
