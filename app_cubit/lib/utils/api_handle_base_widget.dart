import 'package:flutter/material.dart';

import '../global/api_request_state.dart';

class ApiHandleBaseWidget<T> extends StatelessWidget {
  final ApiRequestState state;
  final Widget Function(List<T>) widgetBuilder;

  const ApiHandleBaseWidget(this.state, this.widgetBuilder, {super.key});

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      LoadingState() ||
      InitialState() =>
      const Center(child: CircularProgressIndicator()),
    //we can directly destruct the value from the error state directly and use it in our widgets
      ErrorState error => Text(error.message),
      LoadedState(data: final data) => widgetBuilder(data),
    };
  }
}
