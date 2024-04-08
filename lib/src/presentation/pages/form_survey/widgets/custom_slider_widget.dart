import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';

class CustomSliderWidget extends StatelessWidget {
  final double value;
  final double minValue;
  final double maxValue;
  final int majorTick;
  final int minorTick;
  final Function(double)? onChanged;
  final int labelValuePrecision;
  final int tickValuePrecision;
  final bool linearStep;

  const CustomSliderWidget({
    super.key,
    required this.value,
    required this.minValue,
    required this.maxValue,
    required this.majorTick,
    required this.minorTick,
    required this.onChanged,
    this.labelValuePrecision = 2,
    this.tickValuePrecision = 1,
    this.linearStep = true,
  });

  @override
  Widget build(BuildContext context) {
    const List<double> steps = [0, 12.5, 25, 37.5, 50, 62.5, 75, 87.5, 100];

    final allocatedHeight = MediaQuery.of(context).size.height;
    final allocatedWidth = MediaQuery.of(context).size.width;
    final divisions = (majorTick - 1) * minorTick + majorTick;
    final double valueHeight =
        allocatedHeight * 0.05 < 41 ? 41 : allocatedHeight * 0.05;
    final double tickHeight =
        allocatedHeight * 0.025 < 20 ? 20 : allocatedHeight * 0.025;
    final labelOffset = allocatedWidth / divisions / 2;

    return Column(
      children: [
        Row(
          children: List.generate(
            divisions,
            (index) => Expanded(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: valueHeight,
                    child: index % (minorTick + 1) == 0
                        ? Text(
                            linearStep
                                ? (index / (divisions - 1) * maxValue)
                                    .toStringAsFixed(tickValuePrecision)
                                : '${steps[index].toStringAsFixed(tickValuePrecision)}%',
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          )
                        : null,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: tickHeight,
                    child: VerticalDivider(
                      indent: index % (minorTick + 1) == 0 ? 2 : 6,
                      thickness: 1.2,
                      color: (index / (divisions - 1)) * maxValue <= value
                          ? AppColors.third
                          : Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: labelOffset),
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 3,
              activeTickMarkColor: AppColors.third,
              inactiveTickMarkColor: AppColors.lightGrey,
              activeTrackColor: AppColors.third,
              inactiveTrackColor: AppColors.lightGrey,
              thumbColor: AppColors.lightGrey,
              overlayColor: AppColors.third.withOpacity(0.1),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
              trackShape: CustomTrackShape(),
              showValueIndicator: ShowValueIndicator.never,
              valueIndicatorTextStyle: const TextStyle(
                fontSize: 12,
              ),
            ),
            child: Slider(
              value: value,
              min: minValue,
              max: maxValue,
              divisions: divisions - 1,
              onChanged: onChanged,
              label: value.toStringAsFixed(labelValuePrecision),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
