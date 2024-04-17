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
            // CallableTextField(callable: nameRM.call)
            TextFormField(
              initialValue: appUserRM().userName,
              onChanged: (userName) {
                appUserRM(AppUserEvent.setUserName(userName));
              },
              onFieldSubmitted: (_) => isEditingName.toggle(),
            ).pad()
          else
            appUserRM().userName.text().pad().card().pad(),
        ],
      ),
    ).pad();
  }
}

final isEditingName = false.inj();

final nameRM = Simple('initialState');

class CallableTextField extends UI {
  const CallableTextField({
    super.key,
    required this.callable,
  });
  final String Function([String? newValue]) callable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        nameRM().text(),
        TextFormField(
          initialValue: callable(),
          onChanged: callable,
        ).pad(),
      ],
    );
  }
}
