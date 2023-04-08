import 'package:mvvm_app/features/home/data/models/book_model/book_model.dart';
import 'package:mvvm_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mvvm_app/features/home/data/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }
}