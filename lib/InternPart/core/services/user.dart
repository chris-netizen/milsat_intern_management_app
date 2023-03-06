class UserData {
  final String? userId;
  final String? email;
  final String? phoneNumber;
  final String? fullName;
  final int? team;
  final String? courseOfStudy;
  final String? institution;
  final int? gender;
  final Map<String, dynamic>? mentor;
  final int? year;
  final String? bio;
  final String? profilePicture;

  UserData(
    this.userId,
    this.email,
    this.phoneNumber,
    this.fullName,
    this.team,
    this.courseOfStudy,
    this.institution,
    this.gender,
    this.mentor,
    this.year,
    this.bio,
    this.profilePicture,
  );
}
