import 'package:bubba/common_widgets/appbar_widget.dart';
import 'package:bubba/features/location/presentation/widgets/bubba_time_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      child: Scaffold(
        appBar: BubbaAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            BubbaButtonWidget(),
          ],
        ),
      ),
    );
  }
}
