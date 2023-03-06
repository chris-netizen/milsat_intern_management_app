import 'package:google_fonts/google_fonts.dart';
import 'package:milsat_management_app/files.dart';

class EmojiBox extends StatelessWidget {
  final String emoji;
  final String text;
  final Color color;
  final double width;
  const EmojiBox({
    Key? key,
    required this.emoji,
    required this.text,
    required this.color,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 92.h,
          width: 92.w,
          decoration: BoxDecoration(
            color: const Color(0xFFF2EBF3),
            border: Border.all(color: color, width: width),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Center(
            child: Text(
              emoji,
              style: GoogleFonts.raleway(
                fontSize: 40.sp,
              ),
            ),
          ),
        ),
        Gap(8.h),
        Text(
          text,
          style: GoogleFonts.raleway(
            fontSize: 18.sp,
          ),
        )
      ],
    );
  }
}
