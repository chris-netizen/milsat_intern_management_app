import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';

import '../intern_data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatarMock(
          radius: 27.r,
          imageString: 'assets/person.png',
        ),
        Gap(16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kristin Watson',
              style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.mainAppTheme),
            ),
            Gap(2.h),
            Text(
              cred['email'],
              style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.mainAppTheme),
            ),
            Gap(16.h),
            Text(
              cred['role'].toUpperCase(),
              style: GoogleFonts.raleway(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.mainAppTheme,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
