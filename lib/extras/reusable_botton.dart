import 'package:milsat_management_app/files.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required this.color,
    required this.text,
    this.width,
    required this.color2,
    this.border,
  });
  final Color color;
  final Color color2;
  final String text;
  final double? width;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 35.h,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        border: border,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color2,
            fontFamily: 'Raleway',
            fontSize: 13.sp,
          ),
        ),
      ),
    );
  }
}
