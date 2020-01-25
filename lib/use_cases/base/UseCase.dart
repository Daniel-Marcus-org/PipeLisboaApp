import 'package:pipe_lisboa/domain/Model.dart';

abstract class UseCase<M extends Model> {
  Future<M> execute();

}
