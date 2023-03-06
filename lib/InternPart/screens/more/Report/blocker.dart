import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../files.dart';
import '../../../intern_data.dart';

enum BlockerOriginN { non, self, mentor, teamMember }

enum BlockerOriginT { non, light, network, others }

class Blocker extends StatefulWidget {
  const Blocker({super.key});

  @override
  State<Blocker> createState() => _BlockerState();
}

class _BlockerState extends State<Blocker> {
  bool? checked = false;
  bool? checked1 = false;

  bool? clicked = false;
  BlockerOriginN? _character = BlockerOriginN.non;

  BlockerOriginT? _characterT = BlockerOriginT.non;

  String? blockerType;
  final _formKey = GlobalKey<FormState>();

  final othersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget nonTechnical = Column(
      children: [
        ListTile(
          title: const Text('Self'),
          leading: Radio<BlockerOriginN>(
            value: BlockerOriginN.self,
            groupValue: _character,
            onChanged: (BlockerOriginN? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Mentor'),
          leading: Radio<BlockerOriginN>(
            value: BlockerOriginN.mentor,
            groupValue: _character,
            onChanged: (BlockerOriginN? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Team member'),
          leading: Radio<BlockerOriginN>(
            value: BlockerOriginN.teamMember,
            groupValue: _character,
            onChanged: (BlockerOriginN? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );

    Widget technical = Column(
      children: [
        ListTile(
          title: const Text('Light Issues'),
          leading: Radio<BlockerOriginT>(
            value: BlockerOriginT.light,
            groupValue: _characterT,
            onChanged: (BlockerOriginT? value) {
              setState(() {
                _characterT = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Network'),
          leading: Radio<BlockerOriginT>(
            value: BlockerOriginT.network,
            groupValue: _characterT,
            onChanged: (BlockerOriginT? value) {
              setState(() {
                _characterT = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Others'),
          leading: Radio<BlockerOriginT>(
            value: BlockerOriginT.others,
            groupValue: _characterT,
            onChanged: (BlockerOriginT? value) {
              setState(() {
                _characterT = value;
              });
            },
          ),
        ),
      ],
    );
    Widget others = Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        bottom: 32.h,
        right: 16.w,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'If others, input them below',
              style: GoogleFonts.raleway(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(16.h),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'cannot be empty';
                }
                return null;
              },
              controller: othersController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: AppTheme.mainAppTheme,
        title: Text(
          'Blocker',
          style: GoogleFonts.raleway(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            AppNavigator.pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 16.w,
                  ),
                  child: Text(
                    'Blocker type',
                    style: GoogleFonts.raleway(
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: (checked),
                      onChanged: (val) {
                        checked = val;
                        if (checked == true) {
                          blockerType = 'Technical';
                          checked1 = false;
                          _character = BlockerOriginN.non;
                        } else {
                          null;
                        }
                        setState(() {});
                      },
                    ),
                    Text(
                      'Technical',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        color: const Color(0xFF5E545F),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: (checked1),
                      onChanged: (val) {
                        checked1 = val;
                        if (checked1 == true) {
                          blockerType = 'Non-Technical';
                          checked = false;
                          _characterT = BlockerOriginT.non;
                        } else {
                          null;
                        }
                        setState(() {});
                      },
                    ),
                    Text(
                      'Non-Technical',
                      style: GoogleFonts.raleway(
                        fontSize: 18.sp,
                        color: const Color(0xFF5E545F),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    top: 16.h,
                  ),
                  child: Text(
                    'Blocker Origin',
                    style: GoogleFonts.raleway(
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                blockerType == 'Technical' ? technical : nonTechnical,
                _characterT == BlockerOriginT.others
                    ? others
                    : Container(
                        height: 120.h,
                      ),
              ],
            ),
            Gap(172.h),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 16.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      AppNavigator.pop();
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 14.sp,
                          color: AppTheme.deepPurpleColor,
                        ),
                        Gap(10.h),
                        Text(
                          'Previous',
                          style: GoogleFonts.raleway(
                            fontSize: 14.sp,
                            color: AppTheme.deepPurpleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_characterT == BlockerOriginT.others) {
                        if (_formKey.currentState!.validate()) {
                          data['blockerType'] = blockerType;
                          if (_character == BlockerOriginN.non) {
                            if (_characterT == BlockerOriginT.others) {
                              data['blockerOrigin'] = othersController.text;
                            } else {
                              data['blockerOrigin'] = _characterT;
                            }
                          } else {
                            data['blockerOrigin'] = _character;
                          }

                          print(data.entries);
                          AppNavigator.navigateTo(engagement);
                        }
                      } else {
                        data['blockerType'] = blockerType;
                        if (_character == BlockerOriginN.non) {
                          if (_characterT == BlockerOriginT.others) {
                            data['blockerOrigin'] = othersController.text;
                          } else {
                            data['blockerOrigin'] = _characterT;
                          }
                        } else {
                          data['blockerOrigin'] = _character;
                        }

                        print(data.entries);
                        AppNavigator.navigateTo(engagement);
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          'Next',
                          style: GoogleFonts.raleway(
                            fontSize: 14.sp,
                          ),
                        ),
                        Gap(10.h),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
