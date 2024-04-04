import 'package:beseech/main.dart';

import 'life_ui.dart';

class UserInformationUI extends UI {
  const UserInformationUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: "INFORMATIONS".text(textScaleFactor: 2).pad(),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                'NAME'.text().pad(),
                if (appUser.editing)
                  TextFormField(
                    initialValue: appUser.userName,
                    onChanged: (userName) {
                      appUser = (appUser.copyWith(userName: userName));
                    },
                    onFieldSubmitted: (_) =>
                        appUser = appUser.copyWith(editing: false),
                  ).pad()
                else
                  appUser.userName.text().pad().container(
                        onTap: () => appUser = appUser.copyWith(editing: true),
                      ),
                const Divider(),
                'DATE OF BIRTH'.text().pad(),
                (appUser.dateOfBirth.humanReadable).text().pad().container(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: appUser.dateOfBirth,
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (selectedDate != null)
                      appUser = (appUser.copyWith(dateOfBirth: selectedDate));
                  },
                ),
                const Divider(),
                'DATE OF PUBERTY'.text().pad(),
                (appUser.dateOfPuberty.humanReadable).text().pad(),
                const Divider(),
                const LifeUI()
              ],
            ),
          ).pad(),
        ],
      ),
    );
  }
}
