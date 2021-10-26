import 'package:demo_books/base/base_view.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/ui/common/book_attribute_cell.dart';
import 'package:demo_books/ui/common/skeleton_cells.dart';
import 'package:demo_books/ui/details/book_details_viewmodel.dart';
import 'package:demo_books/util/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({required this.book, Key? key}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return BaseView<BookDetailsViewModel>(
      builder: (context, viewModel, appBar) {
        return Scaffold(
          appBar: appBar! as PreferredSizeWidget,
          body: Column(
            children: [
              const SizedBox(height: 8.0),
              BookAttributeCell(
                attribute: 'Title',
                value: book.attributes.title,
              ),
              ..._bookDetailsDivider(),
              BookAttributeCell(
                attribute: 'ISBN',
                value: book.attributes.isbn.toString(),
              ),
              ..._bookDetailsDivider(),
              BookAttributeCell(
                attribute: 'Date published',
                value: DateFormatter.formatDate(book.attributes.datePublished),
              ),
              ..._bookDetailsDivider(),
              if (viewModel.busy) ...[
                const SkeletonBookAttributeCell(),
                ..._bookDetailsDivider(),
                const SkeletonBookAttributeCell(),
                ..._bookDetailsDivider(),
                const SkeletonBookAttributeCell(),
                ..._bookDetailsDivider(),
                const SkeletonBookAttributeCell(),
              ] else ...[
                if (viewModel.details != null) ...[
                  BookAttributeCell(
                    attribute: 'Author name',
                    value: viewModel.details!.author.attributes.name,
                  ),
                  ..._bookDetailsDivider(),
                  BookAttributeCell(
                    attribute: 'Author birthday',
                    value:
                        DateFormatter.formatDate(viewModel.details!.author.attributes.dateOfBirth),
                  ),
                  ..._bookDetailsDivider(),
                  BookAttributeCell(
                    attribute: 'Available in stores',
                    value:
                        viewModel.details!.stores.map((store) => store.attributes.name).join('\n'),
                  ),
                ] else
                  const SizedBox()
              ]
            ],
          ),
        );
      },
      showLoadingState: false,
      viewModel: BookDetailsViewModel(book, context.read()),
      child: AppBar(
        centerTitle: true,
        title: Text(book.attributes.title),
      ),
    );
  }

  List<Widget> _bookDetailsDivider() {
    return <Widget>[
      const SizedBox(height: 4.0),
      const Divider(thickness: 2.0),
      const SizedBox(height: 4.0),
    ];
  }
}
