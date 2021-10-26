import 'package:demo_books/base/base_view.dart';
import 'package:demo_books/ui/common/book_cell.dart';
import 'package:demo_books/ui/common/skeleton_cells.dart';
import 'package:demo_books/ui/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Book index'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              child: !viewModel.busy
                  ? _buildLoadedState(context, viewModel)
                  : _buildBusyState(context, viewModel),
            ),
          ),
        );
      },
      showLoadingState: false,
      viewModel: HomeViewModel(context.read()),
    );
  }

  Widget _buildLoadedState(BuildContext context, HomeViewModel viewModel) {
    return RefreshIndicator(
      onRefresh: viewModel.onRefresh,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return BookCell(
            book: viewModel.data[index],
            onPressed: () => viewModel.onItemPressed(index),
          );
        },
        itemCount: viewModel.data.length,
      ),
    );
  }

  Widget _buildBusyState(BuildContext context, HomeViewModel viewModel) {
    return ListView.builder(
      itemBuilder: (_, __) => const SkeletonBookCell(),
      itemCount: 9,
    );
  }
}
