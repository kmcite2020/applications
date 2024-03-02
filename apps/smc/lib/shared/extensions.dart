import 'package:manager/manager.dart';
import 'package:smc/presentation/blocs/configuration_bloc.dart';

class MySlider extends UI {
  const MySlider({
    Key? key,
    this.name = '',
    required this.value,
    this.onChanged,
    this.borderRadius = 5,
    this.min = 0,
    this.max = 1,
  }) : super(key: key);

  final String name;
  final double value;
  final ValueChanged<double>? onChanged;
  final double borderRadius;
  final double min, max;

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: RoundedRectangleBorder(
      //   borderRadius: _borderRadius,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (name.isNotEmpty)
                Card(
                  color: Theme.of(context).primaryColor,
                  child: name
                      .text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                      .pad(),
                ).pad(),
              SizedBox(),
              CircleAvatar(child: value.toStringAsFixed(0).text()).pad(),
            ],
          ),
          Builder(
            builder: (context) {
              return GestureDetector(
                onHorizontalDragUpdate: (details) {
                  double updated =
                      (details.localPosition.dx / (context.size!.width))
                          .clamp(0.0, 1.0);
                  onChanged?.call(updated * (max - min) + min);
                },
                child: LinearProgressIndicator(
                  value: (value - min) / (max - min),
                  minHeight: 40,
                  backgroundColor: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    settingsRM().borderRadius,
                  ),
                  // borderRadius: _borderRadius,
                ),
              );
            },
          ).pad().pad(),
        ],
      ),
    );
  }
}
