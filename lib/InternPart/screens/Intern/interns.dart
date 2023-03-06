// ignore_for_file: sort_child_properties_last
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/InternPart/extras/dropdownmenu.dart';
import 'package:milsat_management_app/header.dart';
import 'package:milsat_management_app/InternPart/screens/Intern/intern_card.dart';
import 'package:milsat_management_app/InternPart/extras/milsat_intern.dart';
import 'package:milsat_management_app/files.dart';
import 'package:milsat_management_app/InternPart/screens/Intern/intern_list.dart';

import '../../core/services/api.dart';
import '../../intern_data.dart';

const List<String> list = <String>[
  'All Department',
  'Backend Team',
  'Branding Team',
  'Community Team',
  'Frontend Team',
  'Mobile Team',
  'Staff Team',
  'UI/UX Team'
];

// ignore: prefer_typing_uninitialized_variables
var internsList;

Map<int, dynamic> teamType = {
  0: 'Backend Team',
  1: 'Branding Team',
  2: 'Community Team',
  3: 'Frontend Team',
  4: 'Mobile Team',
  5: 'Staff Team',
  6: 'UI/UX Team'
};

getTeamType(i) {
  if (internsList[i]['team'] == 0) {
    return 'Backend Team';
  } else if (internsList[i]['team'] == 1) {
    return 'Branding Team';
  } else if (internsList[i]['team'] == 2) {
    return 'Community Team';
  } else if (internsList[i]['team'] == 3) {
    return 'Frontend Team';
  } else if (internsList[i]['team'] == 4) {
    return 'Mobile Team';
  } else if (internsList[i]['team'] == 5) {
    return 'Staff Team';
  } else if (internsList[i]['team'] == 6) {
    return 'UI/UX Team';
  }
  return null;
}

getTeamTypeInFigures(i) {
  if (dropDownText == getTeamType(i)) {
    if (getTeamType(i) == 'Backend') {
      return 0;
    } else if (getTeamType(i) == 'Branding Team') {
      return 1;
    } else if (getTeamType(i) == 'Community Team') {
      return 2;
    } else if (getTeamType(i) == 'Frontend Team') {
      return 3;
    } else if (getTeamType(i) == 'Mobile Team') {
      return 4;
    } else if (getTeamType(i) == 'Staff Team') {
      return 5;
    } else if (getTeamType(i) == 'UI/UX Team') {
      return 6;
    }
  }
}

class Interns extends StatefulWidget {
  const Interns({super.key});

  @override
  State<Interns> createState() => _InternsState();
}

class _InternsState extends State<Interns> {
  @override
  void initState() {
    windowTapped = false;
    super.initState();
    getAllInterns();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    getAllInterns();
  }

  bool tapped = true;
  bool windowTapped = false;
  Color untappedColor = const Color(0xFF5E545F);
  var numInterns;

  Future<dynamic> getAllInterns() async {
    try {
      dio.options.headers["Authorization"] = 'Bearer ${cred['token']}';
      var response = await dio.get('/api/interns?pageNumber=1&pageSize=15');
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print(response.data);
        }
        if (kDebugMode) {
          print(response.data['data']);
        }
        setState(() {
          internsList = response.data['data'] as List;
        });
        // print(internsList.length);
        internsList.removeWhere((item) => item['userId'] == cred['Id']);
        // print(internsList.length);
        numInterns = internsList.length;
        return internsList;
      } else {
        if (kDebugMode) {
          print(response.statusCode);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const MilsatIntern(),
          Padding(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      numInterns == null || numInterns < 2
                          ? 'Total Intern: '
                          : 'Total Interns: ',
                      style: GoogleFonts.raleway(
                        color: const Color(0xFF79717A),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${numInterns ?? 0}',
                      style: GoogleFonts.raleway(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (tapped == false) {
                        tapped = !tapped;
                      }
                      windowTapped = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tapped
                          ? AppTheme.deepPurpleColor
                          : AppTheme.mainAppTheme,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.window_outlined,
                      size: 18,
                      color: tapped ? AppTheme.mainAppTheme : untappedColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (tapped != false) {
                        tapped = !tapped;
                      }
                      windowTapped = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: tapped
                          ? AppTheme.mainAppTheme
                          : AppTheme.deepPurpleColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.list,
                      size: 18,
                      color: tapped ? untappedColor : AppTheme.mainAppTheme,
                    ),
                  ),
                ),
                const DropdownButtonExample(),
              ],
            ),
          ),
          Gap(10.h),
          FutureBuilder(
              future: getAllInterns(),
              builder: (context, snapshot) {
                if (snapshot.data != null) {
                  return Expanded(
                    child: !windowTapped
                        ? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: numInterns,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.w,
                                mainAxisExtent: 240.h,
                                mainAxisSpacing: 12.h,
                              ),
                              itemBuilder: (context, i) {
                                return InternCard(
                                  internImage: 'assets/woman_picture.png',
                                  internName: internsList[i]['fullName'],
                                  internRole: teamType.values.elementAt(i),
                                );
                              },
                            ),
                          )
                        : ListView.builder(
                            itemCount: numInterns,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int i) {
                              return InternList(
                                internName: internsList[i]['fullName'],
                                internRole: getTeamType(i),
                                img: 'assets/woman_picture.png',
                              );
                            },
                          ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              })
        ],
      ),
    );
  }
}
