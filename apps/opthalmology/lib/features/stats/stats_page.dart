import 'package:opthalmology/features/settings/settings.dart';

import '../../main.dart';
import '../study_timer/sessions.dart';

part 'stats_page.freezed.dart';
part 'stats_page.g.dart';

class StatsPage extends UI {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: lsd
                .map(
                  (e) => Column(
                    children: [
                      Container(
                        color: settingsRM().materialColor,
                        height: e.durationOfStudy.toDouble(),
                        width: 30,
                        child: '${e.durationOfStudy} '
                            .text(textScaleFactor: .5)
                            .pad(),
                      ).pad()
                    ],
                  ),
                )
                .toList(),
          ).pad()
        ],
      ),
    );
  }
}

final lastSevenDays = <Day>[
  Day(
    durationOfStudy: 77,
  ),
  Day(
    durationOfStudy: 171,
  ),
  Day(
    durationOfStudy: 672,
  ),
  Day(
    durationOfStudy: 273,
  ),
  Day(
    durationOfStudy: 169,
  ),
  Day(
    durationOfStudy: 337,
  ),
  Day(
    durationOfStudy: 190,
  ),
];

@freezed
class Day with _$Day {
  const factory Day({
    @Default(0) final int durationOfStudy,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
