import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_clean_architecture/src/presentation/di/view_model_provider.dart';

import 'loading.dart';

class ContainerWithLoading extends StatelessWidget {
  final Widget _child;

  const ContainerWithLoading({Key? key, required Widget child}) : _child = child, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _child,
        Consumer(
          builder: (context, ref, _) {
            final state = ref.watch(loadingStateProvider);
            return state.isLoading ? const Loading() : const SizedBox();
          },
        ),
      ],
    );
  }
}
