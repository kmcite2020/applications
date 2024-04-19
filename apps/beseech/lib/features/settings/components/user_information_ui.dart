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
                if (appUserRM().editing)
                  TextFormField(
                    initialValue: appUserRM().userName,
                    onChanged: (userName) {
                      appUserRM(AppUserEvent.setUserName(userName));
                    },
                    onFieldSubmitted: (_) {
                      appUserRM.state = appUserRM().copyWith(editing: false);
                    },
                  ).pad()
                else
                  appUserRM().userName.text().pad().container(
                        onTap: () => appUserRM.state = appUserRM().copyWith(
                          editing: true,
                        ),
                      ),
                const Divider(),
                'DATE OF BIRTH'.text().pad(),
                appUserRM().dateOfBirth.text().pad().container(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: appUserRM().dateOfBirth,
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                    );
                    if (selectedDate != null)
                      appUserRM(AppUserEvent.setDateOfBirth(selectedDate));
                  },
                ),
                const Divider(),
                'DATE OF PUBERTY'.text().pad(),
                (appUserRM().dateOfPuberty).text().pad(),
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
