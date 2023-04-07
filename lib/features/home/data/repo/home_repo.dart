import 'package:dartz/dartz.dart';
import 'package:mvvm_app/core/errors/failures.dart';
import '../models/book_model/book_model.dart';



abstract class HomeRepo{

  Future<Either<Failures ,List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures ,List<BookModel>>> fetchFeaturedBooks();

  
}