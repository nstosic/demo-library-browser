import 'package:demo_books/base/base_viewmodel.dart';
import 'package:demo_books/ui/common/loading_state_wrapper.dart';
import 'package:demo_books/ui/navigation/navigation_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef _ViewModelBuilder<T extends BaseViewModel> = Widget Function(BuildContext, T, Widget?);

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({
    required this.builder,
    required this.viewModel,
    this.child,
    this.onViewModelReady,
    this.showLoadingState = true,
    Key? key,
  }) : super(key: key);

  final _ViewModelBuilder<T> builder;
  final Widget? child;
  final void Function(T)? onViewModelReady;
  final bool showLoadingState;
  final T viewModel;

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.launch(
      NavigationHandler(context),
      widget.onViewModelReady,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: widget.viewModel,
      child: Consumer<T>(
        builder: (context, viewModel, child) {
          return Stack(
            children: [
              Positioned.fill(
                child: widget.builder(
                  context,
                  viewModel,
                  child,
                ),
              ),
              if (widget.showLoadingState && widget.viewModel.busy) ...{
                Positioned.fill(
                  child: Container(
                    color: Colors.black54,
                    child: const Center(
                      child: LoadingStateWrapper(),
                    ),
                  ),
                ),
              }
            ],
          );
        },
        child: widget.child,
      ),
    );
  }
}
