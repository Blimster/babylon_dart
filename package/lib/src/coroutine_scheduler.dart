part of babylon_dart;

typedef CoroutineScheduler<T> = void Function(AsyncCoroutine<T> coroutine, void Function(CoroutineStep<T> stepResult) onStep, void Function(Object stepError) onError);
