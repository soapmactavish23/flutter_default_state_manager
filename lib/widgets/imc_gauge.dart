// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:flutter_default_state_manager/widgets/imc_gauges_range.dart';

class ImcGauge extends StatelessWidget {
  final double imc;
  const ImcGauge({
    Key? key,
    required this.imc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGaugesRange(
              start: 12.5,
              end: 18.5,
              color: Colors.blue,
              label: 'MAGREZA',
            ),
            ImcGaugesRange(
              start: 18.5,
              end: 24.5,
              color: Colors.green,
              label: 'NORMAL',
            ),
            ImcGaugesRange(
              start: 24.5,
              end: 29.9,
              color: Colors.yellow[600]!,
              label: 'SOBREPESO',
            ),
            ImcGaugesRange(
              end: 39.9,
              start: 29.9,
              color: Colors.red[500]!,
              label: 'OBSIDADE',
            ),
            ImcGaugesRange(
              end: 47.9,
              start: 39.9,
              color: Colors.red[900]!,
              label: 'OBSIDADE GRAVE',
            ),
          ],
          pointers: [
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            )
          ],
        ),
      ],
    );
  }
}
