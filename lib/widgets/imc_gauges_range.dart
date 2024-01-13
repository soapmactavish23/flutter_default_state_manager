import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGaugesRange extends GaugeRange {
  ImcGaugesRange(
      {super.key,
      required double start,
      required double end,
      required Color color,
      required String label})
      : super(
          startValue: start,
          endValue: end,
          color: color,
          label: label,
          sizeUnit: GaugeSizeUnit.factor,
          labelStyle: const GaugeTextStyle(fontFamily: 'Times', fontSize: 12),
          startWidth: 0.65,
          endWidth: 0.65,
        );
}
