import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:softcent_task/core/error/failures.dart';

abstract class BaseUseCase<Params, Result> {
  Future<Either<Failure, Result>> execute(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
