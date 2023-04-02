import 'package:flutter/material.dart';

import 'widgets/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:BookDetailsBody()
    );
  }
}
