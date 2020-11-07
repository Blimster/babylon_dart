part of babylon;

/// class SimplificationQueue
@JS()
class SimplificationQueue {
  external SimplificationQueue();
  external bool get running;
  external dynamic get getSimplifier;
  external set running(bool running);
  external set getSimplifier(dynamic getSimplifier);
  external void addTask(ISimplificationTask task);
  external void executeNext();
  external void runSimplification(ISimplificationTask task);
}
