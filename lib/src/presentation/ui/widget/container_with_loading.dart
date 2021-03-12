import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:river_movies/src/presentation/di/view_model_provider.dart';

import 'loading.dart';

class ContainerWithLoading extends StatelessWidget {
  ContainerWithLoading({Widget child}) : _child = child;

  final Widget _child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _child,
        HookBuilder(
          builder: (context) {
            final state = useProvider(loadingStateProvider);
            return state.isLoading ? const Loading() : const SizedBox();
          },
        ),
      ],
    );
  }
}
