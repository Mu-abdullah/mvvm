import 'package:flutter/material.dart';

import '../../../../../core/text_styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextStyles().subText(
            text: "You can also like",
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 16,),
          const SimilarBooksListView()
        ],
      ),
    );
  }
}
