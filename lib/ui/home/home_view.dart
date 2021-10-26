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
      builder: (context, viewModel, appBar) {
        return Scaffold(
          appBar: appBar! as PreferredSizeWidget,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: PopupMenuButton<String>(
                      initialValue: '',
                      itemBuilder: (context) {
                        if (viewModel.stores.isEmpty) {
                          return const [
                            PopupMenuItem<String>(
                              value: '',
                              child: SizedBox(
                                width: 128.0,
                                child: Text('All'),
                              ),
                            )
                          ];
                        }
                        return viewModel.stores.map((store) {
                          return PopupMenuItem<String>(
                            value: store.id,
                            child: SizedBox(
                              width: 128.0,
                              child: Text(store.attributes.name),
                            ),
                          );
                        }).toList()
                          ..add(
                            const PopupMenuItem<String>(
                              value: '',
                              child: SizedBox(
                                width: 128.0,
                                child: Text('All'),
                              ),
                            ),
                          );
                      },
                      onSelected: (id) => viewModel.onStoreSelected(id),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              viewModel.selectedStore == null
                                  ? 'Tap to select a store'
                                  : viewModel.selectedStore!.attributes.name,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 800),
                    child: !viewModel.busy
                        ? _buildLoadedState(context, viewModel)
                        : _buildBusyState(context, viewModel),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      showLoadingState: false,
      viewModel: HomeViewModel(
        context.read(),
        context.read(),
      ),
      child: AppBar(
        centerTitle: true,
        title: const Text('Book index'),
      ),
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
