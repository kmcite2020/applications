import 'package:beseech/main.dart';

class NameUI extends UI {
  const NameUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          // border: Border.all(
          //   width: 2,
          //   color: settingsBloc.settings.materialColor.withOpacity(.6),
          // ),
          // borderRadius: BorderRadius.circular(
          //   settingsBloc.settings.borderRadius,
          // ),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              'NAME'.text().pad(),
              IconButton(
                onPressed: () {
                  isEditingName.toggle();
                },
                icon: Icon(isEditingName.state ? Icons.done : Icons.edit),
              ).pad()
            ],
          ),
          if (isEditingName.state)
            TextFormField(
              initialValue: appUser.userName,
              onChanged: (userName) {
                appUser = (appUser.copyWith(userName: userName));
              },
              onFieldSubmitted: (_) => isEditingName.toggle(),
            ).pad()
          else
            appUser.userName.text().pad().card().pad(),
        ],
      ),
    ).pad();
  }
}

final isEditingName = false.inj();
