import 'package:bubba/features/location/presentation/pages/homepage_controller.dart';
import 'package:bubba/features/location/presentation/pages/mappage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BubbaButtonWidget extends ConsumerWidget {
  const BubbaButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<void> state = ref.watch(homePageControllerProvider);

    return MaterialButton(
      color: Theme.of(context).colorScheme.primary,
      elevation: 10,
      shape: const CircleBorder(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(64, 55, 64, 64),
        child: Column(
          children: const [
            Text(
              'BUBBA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 43,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'TIME!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 43,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        // !state.isLoading || !state.isRefreshing
        //     ? ref.read(homePageControllerProvider.notifier).goToMapPage()
        //     : null;

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     fullscreenDialog: true,
        //     builder: (ctx) => MapPage(),
        //   ),
        // );
        ref.read(homePageControllerProvider.notifier).goToMapPage();
      },
    );
  }
}
