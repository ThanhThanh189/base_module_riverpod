abstract class UseCase<Input, Output> {
  Output run(Input input);
}

abstract class FutureUseCase<Input, Output> {
  Future<Output> run(Input input);
}
