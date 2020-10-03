part of babylon;

@JS()
class Promise<T> {
  external Promise then(void Function(T) onFulfilled, [void Function(dynamic) onRejected]);
}
