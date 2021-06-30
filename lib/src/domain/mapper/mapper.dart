abstract class Mapper<T, R> {
  Future<R> mapperTo(T data);

  Future<T> mapperFrom(R data);
}