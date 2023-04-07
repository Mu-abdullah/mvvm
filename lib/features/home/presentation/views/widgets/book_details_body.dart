import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
              Expanded(
                child: SizedBox(
                  height: 16,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
