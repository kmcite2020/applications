import 'package:hmis/main.dart';

class PatientsLoadingWidget extends UI {
  const PatientsLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        child: CircularProgressIndicator(
          color: settingsBloc.getMaterialColor,
        ),
      ),
    );
  }
}
